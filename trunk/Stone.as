package {
	import org.flixel.FlxSprite;
	import org.flixel.FlxG;

	public class Stone extends FlxSprite {
		[Embed(source="data/bg.png")]
		private var ImgStone:Class;

		//public var isCarried:Boolean;

		public function Stone(X:Number, Y:Number){
			super(X, Y, ImgStone);
			height = height - 1; //draw the crate 1 pixel into the floor
			acceleration.y = 40;
			//acceleration.x = 200;
			//velocity.x = 40;
			drag.x = 400;
			maxVelocity.y = 200;

			moves = false;
			//mass = 100;
			//trace(mass)
			immovable = true;
			//this.
			//allowCollisions = DOWN;
			//solid = true;
			//isCarried = false;

		}
		
		override public function update():void {

			//if (isTouching(DOWN)) {
				//velocity.y = 0;
				//acceleration.y = 0;
				//trace("xx")
			//}
			velocity.x = 0;
			super.update();
			velocity.x = 0;
		}
		
	}
}