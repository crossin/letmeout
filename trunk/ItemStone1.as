package {
	public class ItemStone1 extends ItemStone {
		[Embed(source="data/stone1.png")]
		public static var Img:Class;
		
		public static var weight:int = 23;

		public function ItemStone1(X:Number, Y:Number){
			super(X, Y, Img);
		}
	}
}