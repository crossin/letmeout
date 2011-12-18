package
{
	import org.flixel.FlxSprite;
	import org.flixel.FlxG;
	
	public class Gun extends FlxSprite
	{
		[Embed(source="data/gun.png")]
		private var Img:Class;
		
		public static var bulletIndex:int = 0;
		
		public var bullets:Array;
		public var cd:Number;
		
		public function Gun(X:Number, Y:Number)
		{
			super(X, Y, Img);
			cd = 0;
		}
		
		override public function update():void
		{
			if (cd > 0)
			{
				cd -= FlxG.elapsed;
			}
			super.update();
		}
		
		public function shoot():void
		{
			if (cd <= 0)
			{
				var b:FlxSprite = bullets[bulletIndex];
				b.reset(x + (width - b.width) / 2, y);
				b.velocity.y = -100;
				bulletIndex = (bulletIndex + 1) % bullets.length;
				cd = 0.8;
			}
		}
	}
}