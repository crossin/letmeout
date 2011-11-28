package {
	import org.flixel.FlxSprite;

	public class ItemStone extends Item {
		[Embed(source="data/stone.png")]
		public static var Img:Class;

		public function ItemStone(X:Number, Y:Number){
			super(X, Y, Img);
		}
	}
}