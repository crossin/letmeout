package
{
	
	public class HorizontalPlatformAuto extends HorizontalPlatform
	{
		public function HorizontalPlatformAuto(X:Number, Y:Number)
		{
			super(X, Y);
		}
		
		override public function update():void
		{
			if (isLeft)
			{
				if (x > xLeft)
				{
					velocity.x = -50;
				}
				else
				{
					isLeft = false;
				}
			}
			else
			{
				if (x < xRight)
				{
					velocity.x = 50;
				}
				else
				{
					isLeft = true;
				}
			}
			super.update();
		}
	}
}