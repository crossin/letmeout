package {
	public class ItemStone3 extends ItemStone {
		[Embed(source="data/stone3.png")]
		public static var Img:Class;
		
		public static var weight:int = 9;

		public function ItemStone3(X:Number, Y:Number){
			super(X, Y, Img);
		}
	}
}