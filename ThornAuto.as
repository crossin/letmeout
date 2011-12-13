package
{
	import org.flixel.FlxG;
	
	public class ThornAuto extends Thorn
	{
		private var timer:Number;
		private var posY:Number;
		private var order:int;
		private var isMoving:Boolean;
		
		public function ThornAuto(X:Number, Y:Number)
		{
			super(X, Y);
			posY = Y;
			timer = 0;
			isMoving = false;
		}
		
		override public function update():void
		{
			if (isMoving)
			{
				timer = (timer + FlxG.elapsed) % 3;
				var speed:int = 30;
				if (timer < 1)
				{
					velocity.y = (order == 0) ? -speed : speed;
				}
				else if (timer < 2)
				{
					velocity.y = (order == 1) ? -speed : speed;
				}
				else if (timer < 3)
				{
					velocity.y = (order == 2) ? -speed : speed;
				}
				
				if ((y <= posY && velocity.y < 0) || ((y >= posY + height) && velocity.y > 0))
				{
					velocity.y = 0;
				}
			}
			super.update();
		}
		
		public function init(odr:int):void
		{
			order = odr;
		}
		
		public function action():void
		{
			isMoving = true;
		}
	}
}