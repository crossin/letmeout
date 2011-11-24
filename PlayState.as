package {
	import org.flixel.*;

	public class PlayState extends FlxState {
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
		protected var _elevator:FlxSprite;
		protected var boxes:FlxGroup;

		protected var level1:BaseLevel;

		override public function create():void {
			level1 = new Level_level1(true, onSpriteAddedCallback);
			FlxG.follow(player, 10);
			FlxG.followBounds(0, 0, 640, 640);
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

		override public function update():void {
			//_fps.text = FlxU.floor(1/FlxG.elapsed)+" fps";
			super.update();
			collide();

			//FlxU.overlap(boxes, player, touchBox);
			if (FlxG.keys.justPressed("SPACE")){
				carryBox();
			}

			//level1.mainLayer.collide(player);
			//level1.mainLayer.collide(boxes);
			//if(FlxG.keys.justReleased("ENTER"))
			//FlxG.state = new PlayState2();
		}

		protected function onSpriteAddedCallback(sprite:FlxSprite, group:FlxGroup):void {
			if (sprite is Player){
				player = sprite as Player;
			}

			if (sprite is Crate){
				boxes = group as FlxGroup;
			}
		}

		public function carryBox():void {
			if (player.box != null){
				player.drop();
			} else {
				for each (var box:Crate in boxes.members){
					//if (box.x - player.x < 1 && player.x - box.x < 1){
					//box.kill();
					//}

					var deltaX:Number = FlxU.abs((box.x + box.width / 2) - (player.x + player.width / 2));
					var deltaY:Number = FlxU.abs((box.y + box.height / 2) - (player.y + player.height / 2));
					if ((deltaX <= (player.width + box.width) / 2 + 5) && (deltaY <= FlxU.abs(player.height - box.height) / 2 + 5)){
						//box.isCarried = true;
						player.carry(box);
						break;
							//box.drag.x = 0;
							//box.acceleration.y = 0;
					}
				}
			}
		}

	}
}
