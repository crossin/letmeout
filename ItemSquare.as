package {
	import org.flixel.FlxSprite;

	public class ItemSquare extends Item {
		[Embed(source="data/square.png")]
		public static var Img:Class;

		public function ItemSquare(X:Number, Y:Number){
			super(X, Y, Img);
		}
	}
}