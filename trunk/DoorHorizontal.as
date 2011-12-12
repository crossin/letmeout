package
{
	import org.flixel.FlxSprite;
	
	public class DoorHorizontal extends FlxSprite
	{
		[Embed(source="data/door_h.png")]
		private var Img:Class;
		
		public var xLeft:Number;
		public var xRight:Number;
		public var isLeft:Boolean;
		
		public function DoorHorizontal(X:Number, Y:Number)
		{
			super(X, Y, Img);
			
			immovable = true;
		}
		
		override public function update():void
		{
			velocity.x = 0;
			if (isLeft && x > xLeft)
			{
				velocity.x = -50;
			}
			if (!isLeft && y < xRight)
			{
				velocity.x = 50;
			}
			super.update();
		}
		
		public function init(range:int):void
		{
			if (range < 0)
			{
				isLeft = false;
				xLeft = x - range;
				xRight = x;
			}
			else
			{
				isLeft = true;
				xLeft = x;
				xRight = x + range;
			}
		}
		
		public function action():void
		{
			isLeft = !isLeft;
		}
	}
}