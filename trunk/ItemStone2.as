package {
	public class ItemStone2 extends ItemStone {
		[Embed(source="data/stone2.png")]
		public static var Img:Class;

		public function ItemStone2(X:Number, Y:Number){
			super(X, Y, Img);
			weight = ;
		}
	}
}