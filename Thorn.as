package {
	import org.flixel.FlxSprite;

	public class Thorn extends FlxSprite {
		[Embed(source="data/thorn.png")]
		private var Img:Class;


		public function Thorn(X:Number, Y:Number){
			super(X, Y, Img);
		}
	}
}