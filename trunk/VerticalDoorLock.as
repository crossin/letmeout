package
{
	import org.flixel.FlxG;
	
	public class VerticalDoorLock extends VerticalDoor
	{
		[Embed(source="data/door_lock.png")]
		private var Img:Class;
		
		//public var timer:Number;
		//public var isLocked:Boolean;
		
		public function VerticalDoorLock(X:Number, Y:Number)
		{
			super(X, Y);
			loadGraphic(Img, true);
			addAnimation("lock", [0], 0, false);
			addAnimation("open", [1], 0, false);
			//timer = 0;
			//isLocked = true;
		}
		
		override public function update():void
		{
			//if (hasMoved) {
				//timer -= FlxG.elapsed;
				//if (timer < 0) {
					//hasMoved = false;
					//super.action();
				//}
			//}
			super.update();
		}
		
		public function open(item:Class):Boolean{
			if (item == ItemKey) {
				play("open");
				action();
				//isLocked = false;
				return true;
			}
			return false;
		}
	}
}