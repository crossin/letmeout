package
{
	import org.flixel.FlxG;
	
	public class DoorVerticalBack extends DoorVertical
	{
		public var timer:Number;
		public var hasMoved:Boolean;
		
		public function DoorVerticalBack(X:Number, Y:Number)
		{
			super(X, Y);
			timer = 0;
			hasMoved = false;
		}
		
		override public function update():void
		{
			if (hasMoved) {
				timer -= FlxG.elapsed;
				if (timer < 0) {
					hasMoved = false;
					super.action();
				}
			}
			super.update();
		}
		
		override public function action():void
		{
			timer = 3;
			hasMoved = !hasMoved;
			super.action();
		}
	}
}