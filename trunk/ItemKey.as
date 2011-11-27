package {
	import org.flixel.FlxSprite;

	public class ItemKey extends Item {
		[Embed(source="data/key.png")]
		public static var Img:Class;

		public function ItemKey(X:Number, Y:Number){
			super(X, Y, Img);
		}
	}
}