package
{
	import org.flixel.*;
	import flash.utils.getQualifiedClassName;
	
	public class PlayState extends FlxState
	{
		[Embed(source="data/map.png")]
		private var ImgMap:Class;
		[Embed(source="data/tiles.png")]
		private var ImgTiles:Class;
		[Embed(source="data/bg.png")]
		private var ImgBG:Class;
		[Embed(source="data/gibs.png")]
		private var ImgGibs:Class;
		
		protected var _fps:FlxText;
		
		public var player:Player;
		public var boss:Boss;
		public var inventory:Inventory;
		protected var trap:Trap;
		protected var _elevator:FlxSprite;
		protected var boxes:FlxGroup;
		protected var stones:FlxGroup;
		protected var ladder:FlxGroup;
		protected var items:FlxGroup;
		protected var triggers:FlxGroup;
		protected var thorns:FlxGroup;
		protected var locks:FlxGroup;
		protected var passwords:FlxGroup;
		protected var guns:FlxGroup;
		protected var balances:FlxGroup;
		protected var bullets:FlxGroup;
		protected var bulletsEnemy:FlxGroup;
		protected var groupCollide:FlxGroup;
		protected var groupHint:FlxGroup;
		
		protected var isDead:Boolean;
		protected var hasActed:Boolean;
		
		protected var level1:BaseLevel;
		
		override public function create():void
		{
			groupCollide = new FlxGroup();
			boxes = new FlxGroup();
			stones = new FlxGroup();
			ladder = new FlxGroup();
			items = new FlxGroup();
			triggers = new FlxGroup();
			thorns = new FlxGroup();
			locks = new FlxGroup();
			passwords = new FlxGroup();
			guns = new FlxGroup();
			balances = new FlxGroup();
			// bullets
			var s:FlxSprite;
			bullets = new FlxGroup(8);
			for (var i:int = 0; i < 8; i++)
			{
				s = new FlxSprite();
				s.makeGraphic(4, 4, 0xff000000);
				s.exists = false;
				bullets.add(s);
			}
			bulletsEnemy = new FlxGroup(8);
			for (i = 0; i < 8; i++)
			{
				s = new FlxSprite();
				s.makeGraphic(6, 6, 0xffff0000);
				s.exists = false;
				bulletsEnemy.add(s);
			}
			
			level1 = new Level_Level1(true, onObjectAddedCallback);
			groupCollide.add(level1.hitTilemaps);
			
			add(bullets);
			add(bulletsEnemy);
			
			groupHint = new FlxGroup();
			add(groupHint);
			groupHint.add(player.markE);
			groupHint.add(player.markQ);
			inventory = new Inventory();
			groupHint.add(inventory);
			
			isDead = false;
			
			FlxG.camera.follow(player, FlxCamera.STYLE_TOPDOWN);
			FlxG.camera.deadzone = new FlxRect(FlxG.width / 3, FlxG.height / 4, FlxG.width / 3, FlxG.height / 2);
			//camera = new FlxCamera(0, 0, FlxG.width, FlxG.height);
			//FlxG.resetCameras(camera);
			//camera.follow(player, FlxCamera.STYLE_PLATFORMER);
			FlxG.worldBounds = new FlxRect(BaseLevel.boundsMinX, BaseLevel.boundsMinY, BaseLevel.boundsMaxX, BaseLevel.boundsMaxY);
			FlxG.camera.bounds = FlxG.worldBounds;
			FlxG.bgColor = 0xffffeeee;
			//FlxG.camera.bgColor = 0xff233e58
			//FlxG.follow(player, 10);
			//FlxG.followBounds(0, 0, 640, 640);
			//FlxG.watch(player.velocity, "x");
			//FlxG.log("xxx");
		/*
		   //Background
		   FlxState.bgColor = 0xffacbcd7;
		   var decoration:FlxSprite = new FlxSprite(256,159,ImgBG);
		   decoration.moves = false;
		   decoration.solid = false;
		   add(decoration);
		   add(new FlxText(32,36,96,"collision").setFormat(null,16,0x778ea1,"center"));
		   add(new FlxText(32,60,96,"DEMO").setFormat(null,24,0x778ea1,"center"));
		
		   //Add game objects
		   add(new Elevator(208,80,112));
		   add(new Pusher(96,208,56));
		   add(new Player(32,176));
		   add(new Crate(64,208));
		   add(new Crate(108,176));
		   add(new Crate(140,176));
		   add(new Crate(192,208));
		   add(new Crate(272,48));
		
		   //This is the thing that spews nuts and bolts
		   var dispenser:FlxEmitter = new FlxEmitter(32,32);
		   dispenser.setSize(8,24);
		   dispenser.setXSpeed(100,400);
		   dispenser.setYSpeed(-50,50);
		   dispenser.createSprites(ImgGibs,120,16,true,0.8);
		   dispenser.start(false,0.035);
		   add(dispenser);
		
		   //Basic level structure
		   var t:FlxTilemap = new FlxTilemap();
		   t.auto = FlxTilemap.ALT;
		   t.loadMap(FlxTilemap.imageToCSV(ImgMap,false,2),ImgTiles);
		   t.follow();
		   add(t);
		
		   //Instructions and stuff
		   _fps = new FlxText(FlxG.width-40,0,40).setFormat(null,8,0x778ea1,"right",0x233e58);
		   _fps.scrollFactor.x = _fps.scrollFactor.y = 0;
		   add(_fps);
		   var tx:FlxText;
		   tx = new FlxText(2,0,FlxG.width,"flixel v2.0");
		   tx.scrollFactor.x = tx.scrollFactor.y = 0;
		   tx.color = 0x778ea1;
		   tx.shadow = 0x233e58;
		   add(tx);
		   tx = new FlxText(2,FlxG.height-12,FlxG.width,"Interact with ARROWS + SPACE, or press ENTER for next demo.");
		   tx.scrollFactor.x = tx.scrollFactor.y = 0;
		   tx.color = 0x778ea1;
		   tx.shadow = 0x233e58;
		   add(tx);
		 */
		}
		
		override public function update():void
		{
			if (isDead)
				return;
			//_fps.text = FlxU.floor(1/FlxG.elapsed)+" fps";
			
			//collide();
			//level1.mainLayer.collide(player);
			//level1.mainLayer.collide(boxes);
			//level1.mainLayer.collide(stones);
			FlxG.collide(groupCollide, groupCollide);
			
			//FlxU.overlap(boxes, player, touchBox);
			
			// check player's action
			player.markE.visible = false;
			player.markQ.visible = false;
			hasActed = carryBox() || pullStone();
			
			player.onLadder = false;
			FlxG.overlap(player, thorns, beginDeath);
			FlxG.overlap(player, ladder, overLadder);
			FlxG.overlap(player, items, overItem);
			FlxG.overlap(player, triggers, overTrigger);
			FlxG.overlap(player, trap, overTrap);
			FlxG.overlap(player, locks, overLock);
			FlxG.overlap(player, passwords, overPassword);
			FlxG.overlap(player, guns, overGun);
			FlxG.overlap(player, balances, overBalance);
			// boss
			FlxG.collide(level1.hitTilemaps, bullets, collideBullet);
			FlxG.collide(level1.hitTilemaps, boss, collideBoss);
			FlxG.overlap(boss, bullets, hitBoss);
			FlxG.overlap(player, bulletsEnemy, hitPlayer);
			
			//FlxG.collide(level1.hitTilemaps, stones);
			//FlxG.overlap(level1.hitTilemaps, player, null,null);
			//trace(level1.hitTilemaps)
			//trace(player.climbing)
			//level1.mainLayer.collide(player);
			//level1.mainLayer.collide(boxes);
			//if(FlxG.keys.justReleased("ENTER"))
			//FlxG.state = new PlayState2();
			super.update();
		}
		
		protected function onObjectAddedCallback(obj:Object, layer:FlxGroup, level:BaseLevel, scrollX:Number, scrollY:Number, properties:Array):Object
		{
			if (obj is Player)
			{
				player = obj as Player;
				groupCollide.add(player);
			}
			else if (obj is Boss)
			{
				boss = obj as Boss;
				boss.bullets = bulletsEnemy.members;
			}
			else if (obj is Trap)
			{
				trap = obj as Trap;
			}
			else if (obj is Box)
			{
				boxes.add(obj as Box);
				groupCollide.add(obj as Box);
			}
			else if (obj is Stone)
			{
				stones.add(obj as Stone);
				groupCollide.add(obj as Stone);
			}
			else if (obj is Ladder)
			{
				if (properties[0])
				{
					(obj as Ladder).isTop = true;
				}
				ladder.add(obj as Ladder);
			}
			else if (obj is Item)
			{
				items.add(obj as Item);
			}
			else if (obj is VerticalDoor)
			{
				(obj as VerticalDoor).init(properties[0].value);
				groupCollide.add(obj as VerticalDoor);
			}
			else if (obj is HorizontalPlatform)
			{
				(obj as HorizontalPlatform).init(properties[0].value);
				groupCollide.add(obj as HorizontalPlatform);
			}
			else if (obj is Trigger)
			{
				triggers.add(obj as Trigger);
			}
			else if (obj is Lock)
			{
				locks.add(obj as Lock);
			}
			else if (obj is Thorn)
			{
				thorns.add(obj as Thorn);
				if (obj is ThornAuto)
				{
					(obj as ThornAuto).init(properties[0].value);
				}
			}
			else if (obj is Password)
			{
				(obj as Password).init(properties[0].value);
				passwords.add(obj as Password);
			}
			else if (obj is Gun)
			{
				(obj as Gun).bullets = bullets.members;
				guns.add(obj as Gun);
			}
			else if (obj is Balance)
			{
				balances.add(obj as Balance);
				add((obj as Balance).contents);
			}
			else if (obj is ObjectLink)
			{
				var link:ObjectLink = obj as ObjectLink;
				if (link.fromObject is Trigger)
				{
					(link.fromObject as Trigger).targets.push(link.toObject);
				}
				else if (link.fromObject is Trap)
				{
					(link.fromObject as Trap).targets.push(link.toObject);
				}
				else if (link.fromObject is Boss)
				{
					(link.fromObject as Boss).targets.push(link.toObject);
				}
				else if (link.fromObject is Lock)
				{
					(link.fromObject as Lock).target = link.toObject;
				}
				else if (link.fromObject is Password)
				{
					(link.fromObject as Password).target = link.toObject;
				}
				else if (link.fromObject is Balance)
				{
					(link.fromObject as Balance).target = link.toObject;
				}
			}
			return obj;
		}
		
		public function carryBox():Boolean
		{
			if (player.box)
			{
				if (FlxG.keys.justPressed("SPACE"))
				{
					player.drop();
					return true;
				}
			}
			else if (!player.inAction)
			{
				for each (var box:Box in boxes.members)
				{
					//if (box.x - player.x < 1 && player.x - box.x < 1){
					//box.kill();
					//}
					
					var deltaX:Number = FlxU.abs((box.x + box.width / 2) - (player.x + player.width / 2));
					var deltaY:Number = FlxU.abs((box.y + box.height / 2) - (player.y + player.height / 2));
					if ((deltaX <= (player.width + box.width) / 2 + 5) && (deltaY <= (player.height + box.height) / 2 + 5))
					{
						//box.isCarried = true;
						if ((player.facing == FlxObject.RIGHT && box.x + box.width > player.x + player.width) || (player.facing == FlxObject.LEFT && box.x < player.x))
						{
							player.markE.visible = true;
							if (FlxG.keys.justPressed("SPACE"))
							{
								player.carry(box);
							}
							return true;
						}
							//box.drag.x = 0;
							//box.acceleration.y = 0;
					}
				}
			}
			return false;
		}
		
		public function pullStone():Boolean
		{
			if (player.stone)
			{
				if (FlxG.keys.justPressed("SPACE"))
				{
					player.letgo();
					return true;
				}
			}
			else if (!player.inAction)
			{
				for each (var stone:Stone in stones.members)
				{
					var deltaX:Number = FlxU.abs((stone.x + stone.width / 2) - (player.x + player.width / 2));
					var deltaY:Number = FlxU.abs((stone.y + stone.height / 2) - (player.y + player.height / 2));
					if ((deltaX <= (player.width + stone.width) / 2 + 5) && (deltaY <= FlxU.abs(player.height - stone.height) / 2 + 5))
					{
						if ((player.facing == FlxObject.RIGHT && stone.x > player.x) || (player.facing == FlxObject.LEFT && stone.x < player.x))
						{
							player.markE.visible = true;
							if (FlxG.keys.justPressed("SPACE"))
							{
								player.pull(stone);
							}
							return true;
						}
					}
				}
			}
			return false;
		}
		
		public function overItem(Object1:FlxObject, Object2:FlxObject):void
		{
			if (!player.inAction && !hasActed)
			{
				player.markE.visible = true;
				if (FlxG.keys.justPressed("SPACE"))
				{
					inventory.addItem(getQualifiedClassName(Object2));
					Object2.kill();
					hasActed = true;
				}
			}
		}
		
		public function overTrigger(Object1:FlxObject, Object2:FlxObject):void
		{
			if (!player.inAction && !hasActed)
			{
				player.markE.visible = true;
				if (FlxG.keys.justPressed("SPACE"))
				{
					for each (var tar:Object in(Object2 as Trigger).targets)
					{
						tar.action();
					}
					hasActed = true;
				}
			}
		}
		
		public function overTrap(Object1:FlxObject, Object2:FlxObject):void
		{
			if (!(Object2 as Trap).triggered)
			{
				for each (var tar:Object in(Object2 as Trap).targets)
				{
					tar.action();
				}
				(Object2 as Trap).triggered = true;
			}
		}
		
		public function overLock(Object1:FlxObject, Object2:FlxObject):void
		{
			if (!player.inAction && !hasActed)
			{
				player.markQ.visible = true;
				if (FlxG.keys.justPressed("CONTROL"))
				{
					if ((Object2 as Lock).open(inventory.getItem()))
					{
						inventory.useItem();
					}
					hasActed = true;
				}
			}
		}
		
		public function overPassword(Object1:FlxObject, Object2:FlxObject):void
		{
			if (!player.inAction && !hasActed)
			{
				player.markE.visible = true;
				if (FlxG.keys.justPressed("SPACE"))
				{
					(Object2 as Password).change();
					var allCorrect:Boolean = true;
					for each (var psw:Password in passwords.members)
					{
						allCorrect &&= psw.correct;
					}
					if (allCorrect)
					{
						(Object2 as Password).target.action();
					}
					hasActed = true;
				}
			}
		}
		
		public function overGun(Object1:FlxObject, Object2:FlxObject):void
		{
			if (!player.inAction && !hasActed)
			{
				player.markE.visible = true;
				if (FlxG.keys.justPressed("SPACE"))
				{
					(Object2 as Gun).shoot();
					hasActed = true;
				}
			}
		}
		
		public function overBalance(Object1:FlxObject, Object2:FlxObject):void
		{
			if (!player.inAction && !hasActed)
			{
				// put
				player.markQ.visible = true;
				if (FlxG.keys.justPressed("CONTROL"))
				{
					if ((Object2 as Balance).addStone(inventory.getItem()))
					{
						inventory.useItem();
						checkBalance();
					}
					hasActed = true;
				}
				// get
				if ((Object2 as Balance).index >= 0)
				{
					player.markE.visible = true;
					if (FlxG.keys.justPressed("SPACE"))
					{
						(Object2 as Balance).removeStone();
						checkBalance();
						hasActed = true;
					}
				}
			}
		}
		
		public function overLadder(Object1:FlxObject, Object2:FlxObject):void
		{
			if (!player.inAction)
			{
				(Object1 as Player).onLadder = true;
				(Object1 as Player).onLadderTop = false;
				if ((Object2 as Ladder).isTop && Object1.y < Object2.y)
				{
					(Object1 as Player).onLadderTop = true;
				}
			}
		}
		
		public function beginDeath(Object1:FlxObject, Object2:FlxObject):void
		{
			isDead = true;
			FlxG.fade(0xff1e150f, 1, onDead);
		}
		
		public function collideBullet(Object1:FlxObject, Object2:FlxObject):void
		{
			Object2.kill();
		}
		
		public function collideBoss(Object1:FlxObject, Object2:FlxObject):void
		{
			Object2.velocity.x = (Object2.touching == FlxObject.RIGHT) ? -100 : 100;
		}
		
		public function hitBoss(Object1:FlxObject, Object2:FlxObject):void
		{
			Object1.hurt(1);
			Object2.kill();
		}
		
		public function hitPlayer(Object1:FlxObject, Object2:FlxObject):void
		{
			Object2.kill();
			isDead = true;
			FlxG.fade(0xff1e150f, 1, onDead);
		}
		
		private function onDead():void
		{
			FlxG.resetState();
		}
		
		private function checkBalance():void
		{
			var b1:Balance = balances.members[0];
			var b2:Balance = balances.members[1];
			var w1:int = b1.weight;
			var w2:int = b2.weight;
			if (w1 > w2)
			{
				b1.isUp = false;
				balances.members[1].isUp = true;
			}
			else if (w1 < w2)
			{
				b1.isUp = true;
				b2.isUp = false;
			}
			else if (w1 == 0)
			{
				b1.isUp = true;
				b2.isUp = true;
			}
			else
			{
				b1.isUp = false;
				b2.isUp = false;
			}
			b1.target.isUp = b1.isUp;
			b2.target.isUp = b2.isUp;
		}
	}
}
