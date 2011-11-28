package {
	import org.flixel.FlxSprite;

	public class ItemBadge extends Item {
		[Embed(source="data/badge.png")]
		public static var Img:Class;

		public function ItemBadge(X:Number, Y:Number){
			super(X, Y, Img);
		}
	}
}