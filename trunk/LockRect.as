package
{
	
	public class LockRect extends Lock
	{
		[Embed(source="data/lock_rect.png")]
		private var Img:Class;
		
		public function LockRect(X:Number, Y:Number)
		{
			super(X, Y);
			loadGraphic(Img, true);
		}
	}
}