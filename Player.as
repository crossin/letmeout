package
{
	import flash.display.Sprite;
	import org.flixel.*;
	
	public class Player extends FlxSprite
	{
		[Embed(source="data/player.png")]
		private var ImgPlayer:Class;
		[Embed(source="data/mark_e.png")]
		private var ImgMarkE:Class;
		[Embed(source="data/mark_q.png")]
		private var ImgMarkQ:Class;
		
		public static const STAND:int = 1;
		public static const JUMP:int = 2;
		public static const CLIMB:int = 3;
		
		public var box:Box;
		public var stone:Stone;
		//public var standing:Boolean;
		//public var climbing:Boolean;
		public var onLadder:Boolean;
		public var onLadderTop:Boolean;
		public var inAction:Boolean;
		
		public var status:int;
		public var speed:int;
		
		public var markE:FlxSprite;
		public var markQ:FlxSprite;
		
		public function Player(X:Number, Y:Number)
		{
			super(X, Y);
			loadGraphic(ImgPlayer, true, true, 24, 32);
			speed = 100;
			maxVelocity.x = speed; //walking speed
			maxVelocity.y = 200;
			acceleration.y = 400; //gravity
			drag.x = maxVelocity.x * 8; //deceleration (sliding to a stop)
			
			//tweak the bounding box for better feel
			width = width * 0.6;
			height = height * 0.8;
			offset.x = width * 0.2;
			offset.y = height * 0.1;
			//width = 8;
			//height = 20;
			//offset.x = 3;
			//offset.y = 3;
			
			status = STAND;
			
			onLadder = false;
			onLadderTop = false;
			inAction = false;
			
			addAnimation("idle", [0], 0, false);
			addAnimation("walk", [1, 2, 3, 4], 5, true);
			addAnimation("walk_back", [3, 2, 1, 0], 10, true);
			addAnimation("flail", [6], 0, true);
			addAnimation("jump", [5], 0, false);
			
			markE = new FlxSprite(0, 0, ImgMarkE);
			markE.active = false;
			markE.visible = false;
			
			markQ = new FlxSprite(0, 0, ImgMarkQ);
			markQ.active = false;
			markQ.visible = false;
		}
		
		override public function update():void
		{
			//Smooth slidey walking controls
			acceleration.x = 0;
			if (FlxG.keys.LEFT)
			{
				facing = LEFT;
				
				if (stone)
				{
					velocity.x = -20;
					stone.velocity.x = -20;
				}
				else
				{
					acceleration.x -= drag.x;
				}
			}
			if (FlxG.keys.RIGHT)
			{
				facing = RIGHT;
				if (stone)
				{
					velocity.x = 20;
					stone.velocity.x = 20;
				}
				else
				{
					acceleration.x += drag.x;
				}
			}
			
			// control on different status
			if (status == STAND)
			{
				maxVelocity.x = speed;
				acceleration.y = 400;
				//Jump controls
				if (FlxG.keys.justPressed("UP") && !stone)
				{
					velocity.y = -acceleration.y * 0.44;
					play("jump");
				} //Animations
				else if (velocity.x != 0)
					play("walk");
				//else if (velocity.x < 0)
				//play("walk_back");
				else
					play("idle");
			}
			
			if (status == JUMP)
			{
				maxVelocity.x = speed;
				acceleration.y = 400;
				if (velocity.y < 0)
					play("jump");
				else
					play("flail");
			}
			
			if (status == CLIMB)
			{
				maxVelocity.x = 20;
				acceleration.y = 0;
				velocity.y = 0;
				if (FlxG.keys.UP && !onLadderTop)
				{
					velocity.y = -40;
				}
				if (FlxG.keys.DOWN)
				{
					velocity.y = 40;
				}
			}
			
			// check stand
			if (isTouching(FLOOR))
			{
				status = STAND;
			}
			else if (status == STAND)
			{
				status = JUMP;
			}
			//status = ((status == STAND) && (FlxU.abs(velocity.y) > 20)) ? JUMP : status;
			//status = (FLOOR) ? STAND : status;
			
			// check on ladder
			if (onLadder)
			{
				if (FlxG.keys.UP && status != CLIMB)
				{
					status = CLIMB;
					velocity.x = 0;
				}
			}
			else if (status == CLIMB)
			{
				status = JUMP;
			}
//trace(status)
			if (box)
			{
				//box.velocity.x = ((x + width / 2) - (box.x + box.width / 2)) * 50;
				//box.velocity.y = ((y - box.height) - box.y) * 50;
				box.x = x + width / 2 - box.width / 2;
				box.y = y;
			}
			if (stone)
			{
				var deltaX:Number = FlxU.abs((stone.x + stone.width / 2) - (x + width / 2));
				var deltaY:Number = FlxU.abs((stone.y + stone.height / 2) - (y + height / 2));
				if ((deltaX > (width + stone.width) / 2 + 5) || (deltaY > FlxU.abs(height - stone.height) / 2 + 5))
				{
					letgo();
				}
			}
			super.update();
			
			if (markE.visible && markQ.visible)
			{
				markE.reset(x + width / 2 - markE.width / 2 + 5, y - markE.height - 4);
				markQ.reset(x + width / 2 - markQ.width / 2 - 5, y - markQ.height - 4);
			}
			else if (markE.visible)
			{
				markE.reset(x + width / 2 - markE.width / 2, y - markE.height - 4);
			}
			else if (markQ.visible)
			{
				markQ.reset(x + width / 2 - markQ.width / 2, y - markQ.height - 4);
			}
		
		}
		
		public function carry(b:Box):void
		{
			box = b;
			box.solid = false;
			height += box.height;
			y -= box.height;
			offset.y -= box.height;
			inAction = true;
			//offset.x -= (box.width - width) / 2;
			//x -= (box.width - width) / 2;
			//width = FlxU.max(width, box.width);
		}
		
		public function drop():void
		{
			height -= box.height;
			y += box.height;
			offset.y += box.height;
			box.solid = true;
			//if (facing == RIGHT)
			//{
			//box.x = x + width + 2;
			//}
			//else
			//{
			//box.x = x - box.width - 2;
			//}
			box.y = y + height - box.height;
			//box.y = y;
			//box.velocity.y = velocity.y;
			box = null;
			inAction = false;
		}
		
		public function pull(s:Stone):void
		{
			stone = s;
			stone.move();
			inAction = true;
		}
		
		public function letgo():void
		{
			stone.stop();
			stone = null;
			inAction = false;
		}
	}
}