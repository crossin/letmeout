package
{
	import org.flixel.FlxSprite;
	
	public class HorizontalPlatform extends FlxSprite
	{
		[Embed(source="data/platform.png")]
		private var Img:Class;
		
		public var xLeft:Number;
		public var xRight:Number;
		public var isLeft:Boolean;
		
		public function HorizontalPlatform(X:Number, Y:Number)
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
			if (!isLeft && x < xRight)
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
				xLeft = x + range;
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