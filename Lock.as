package
{
	import org.flixel.FlxSprite;
	
	public class Lock extends FlxSprite
	{
		[Embed(source="data/lock.png")]
		private var Img:Class;
		
		public var target:Object;
		
		public function Lock(X:Number, Y:Number)
		{
			super(X, Y, Img);
			//solid = true;
		}
		
		public function open(item:Class):Boolean{
			if (item == ItemKey) {
				target.action();
				kill();
				//isLocked = false;
				return true;
			}
			return false;
		}
	}
}