package {
	import org.flixel.*;

	public class Player extends FlxSprite {
		[Embed(source="data/player.png")]
		private var ImgPlayer:Class;

		public var box:Crate;

		public function Player(X:Number, Y:Number){
			super(X, Y);
			loadGraphic(ImgPlayer, true, true);
			maxVelocity.x = 100; //walking speed
			//maxVelocity.y = 100;
			acceleration.y = 400; //gravity
			drag.x = maxVelocity.x * 4; //deceleration (sliding to a stop)

			//tweak the bounding box for better feel
			width = 8;
			height = 10;
			offset.x = 3;
			offset.y = 3;

			addAnimation("idle", [0], 0, false);
			addAnimation("walk", [1, 2, 3, 0], 10, true);
			addAnimation("walk_back", [3, 2, 1, 0], 10, true);
			addAnimation("flail", [1, 2, 3, 0], 18, true);
			addAnimation("jump", [4], 0, false);
		}

		override public function update():void {
			//Smooth slidey walking controls
			acceleration.x = 0;
			if (FlxG.keys.LEFT){
				facing = LEFT;
				acceleration.x -= drag.x;
			}
			if (FlxG.keys.RIGHT){
				facing = RIGHT;
				acceleration.x += drag.x;
			}

			if (onFloor){
				//Jump controls
				if (FlxG.keys.justPressed("UP")){
					velocity.y = -acceleration.y * 0.51;
					play("jump");
				} //Animations
				else if (velocity.x != 0)
					play("walk");
				//else if (velocity.x < 0)
				//play("walk_back");
				else
					play("idle");
			} else if (velocity.y < 0)
				play("jump");
			else
				play("flail");

			//Default object physics update


			if (box != null){
				//box.velocity.x = ((x + width / 2) - (box.x + box.width / 2)) * 50;
				//box.velocity.y = ((y - box.height) - box.y) * 50;
				box.x = x;
				box.y = y;
			}
			super.update();
		}

		public function carry(b:Crate):void {
			box = b;
			box.solid = false;
			height += box.height;
			
			y -= box.height;
			offset.y -= box.height;
			trace(height)
			//offset.x -= (box.width - width) / 2;
			//x -= (box.width - width) / 2;
			//width = FlxU.max(width, box.width);
		}
		
		public function drop():void {
			box.solid = true;
			height -= box.height;
			offset.y += box.height;
			box = null;
		}
	}
}