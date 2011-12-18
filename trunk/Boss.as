package
{
	import org.flixel.FlxSprite;
	import org.flixel.FlxG;
	import org.flixel.FlxU;
	
	public class Boss extends FlxSprite
	{
		[Embed(source="data/boss.png")]
		private var Img:Class;
		
		public static var bulletIndex:int = 0;
		
		public var targets:Array;
		public var player:Player;
		public var bullets:Array;
		public var cd:Number;
		
		public function Boss(X:Number, Y:Number)
		{
			super(X, Y, Img);
			velocity.x = 100;
			health = 3;
			height = height * 0.8;
			offset.x = width * 0.1;
			width = width * 0.8;
			cd = 1;
			active = false;
			targets = new Array();
		}
		
		override public function update():void
		{
			cd -= FlxG.elapsed;
			if (cd <= 0)
			{
				shoot();
			}
			super.update();
		}
		
		override public function kill():void
		{
			for each (var tar:Object in targets)
			{
				tar.action();
			}
			super.kill();
		}
		
		public function shoot():void
		{
			var b:FlxSprite = bullets[bulletIndex];
			b.reset(x + (width - b.width) / 2, y + height);
			var shootAngle:Number = FlxU.getAngle(getMidpoint(), player.getMidpoint());
			b.velocity = FlxU.rotatePoint(0, 100, 0, 0, shootAngle);
			bulletIndex = (bulletIndex + 1) % bullets.length;
			cd = 1;
		}
		
		public function action():void
		{
			player = (FlxG.state as PlayState).player;
			active = true;
		}
	}
}