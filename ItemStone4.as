package {
	public class ItemStone4 extends ItemStone {
		[Embed(source="data/stone4.png")]
		public static var Img:Class;
		
		public static var weight:int = 30;

		public function ItemStone4(X:Number, Y:Number){
			super(X, Y, Img);
		}
	}
}