package {
	public class ItemStone5 extends ItemStone {
		[Embed(source="data/stone5.png")]
		public static var Img:Class;
		
		public static var weight:int = 27;

		public function ItemStone5(X:Number, Y:Number){
			super(X, Y, Img);
		}
	}
}