package
{
	import org.flixel.FlxSprite;
	
	public class VerticalDoor extends FlxSprite
	{
		[Embed(source="data/door.png")]
		private var Img:Class;
		
		public var yUp:Number;
		public var yDown:Number;
		public var isUp:Boolean;
		
		public function VerticalDoor(X:Number, Y:Number)
		{
			super(X, Y, Img);
			
			immovable = true;
		}
		
		override public function update():void
		{
			velocity.y = 0;
			if (isUp && y > yUp)
			{
				velocity.y = -50;
			}
			if (!isUp && y < yDown)
			{
				velocity.y = 50;
			}
			super.update();
		}
		
		public function init(range:int):void
		{
			if (range < 0)
			{
				isUp = false;
				yUp = y + range;
				yDown = y;
			}
			else
			{
				isUp = true;
				yUp = y;
				yDown = y + range;
			}
		}
		
		public function action():void
		{
			isUp = !isUp;
		}
	}
}