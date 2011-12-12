package
{
	public class VerticalPlatformAuto extends VerticalDoor
	{	
		[Embed(source="data/platform.png")]
		private var Img:Class;
		
		public function VerticalPlatformAuto(X:Number, Y:Number)
		{
			super(X, Y);
			loadGraphic(Img);
		}
		
		override public function update():void
		{
			if (isUp)
			{
				if (y > yUp)
				{
					velocity.y = -50;
				}
				else
				{
					isUp = false;
				}
			}
			else
			{
				if (y < yDown)
				{
					velocity.y = 50;
				}
				else
				{
					isUp = true;
				}
			}
			super.update();
		}
	}
}