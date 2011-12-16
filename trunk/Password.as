package
{
	import org.flixel.FlxSprite;
	import org.flixel.FlxText;
	
	public class Password extends FlxSprite
	{
		[Embed(source="data/password.png")]
		public var Img:Class;

		public var num:FlxText;
		
		public function Password(X:Number, Y:Number)
		{
			super(X, Y, Img);
			num = new FlxText(X, Y, 30, "12");
			num.color = 0xffff0000
			//solid = true;
		}
	}
}