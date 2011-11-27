package {
	import org.flixel.FlxSprite;

	public class Ladder extends FlxSprite {
		[Embed(source="data/bg.png")]
		private var img:Class;

		//public var isCarried:Boolean;

		public function Ladder(X:Number, Y:Number){
			super(X, Y, img);
			width /= 2;
			offset.x = width / 2;
			//height = height - 1; //draw the crate 1 pixel into the floor
			//acceleration.y = 400;
			//drag.x = 400;
			//maxVelocity.y = 200;

			//solid = false;
			//isCarried = false;

		}
	}
}