package {
	import org.flixel.FlxSprite;

	public class Box extends FlxSprite {
		[Embed(source="data/crate.png")]
		private var ImgBox:Class;

		//public var isCarried:Boolean;

		public function Box(X:Number, Y:Number){
			super(X, Y, ImgBox);
			height = height - 1; //draw the crate 1 pixel into the floor
			acceleration.y = 400;
			drag.x = 200;
			maxVelocity.y = 200;

			//isCarried = false;

		}
	}
}