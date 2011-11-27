package {
	import org.flixel.FlxSprite;

	public class Stone extends FlxSprite {
		[Embed(source="data/bg.png")]
		private var ImgStone:Class;

		//public var isCarried:Boolean;

		public function Stone(X:Number, Y:Number){
			super(X, Y, ImgStone);
			height = height - 1; //draw the crate 1 pixel into the floor
			acceleration.y = 400;
			drag.x = 400;
			maxVelocity.y = 200;

			fixed = true;
			//isCarried = false;

		}
	}
}