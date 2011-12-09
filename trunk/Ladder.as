package {
	import org.flixel.FlxSprite;

	public class Ladder extends FlxSprite {
		[Embed(source="data/bg.png")]
		private var img:Class;

		public var isTop:Boolean;

		public function Ladder(X:Number, Y:Number){
			super(X, Y, img);
			width /= 2;
			offset.x = width / 2;
			isTop = false;
		}
	}
}