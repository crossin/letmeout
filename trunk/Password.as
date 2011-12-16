package
{
	import org.flixel.FlxSprite;
	import org.flixel.FlxText;
	
	public class Password extends FlxSprite
	{
		[Embed(source="data/password.png")]
		public var Img:Class;
		
		public var answer:int;
		public var correct:Boolean;
		public var target:Object;
		
		public function Password(X:Number, Y:Number)
		{
			super(X, Y);
			loadGraphic(Img, true, false, 16, 48);
			correct = false;
			//solid = true;
		}
		
		public function init(type:int):void
		{
			switch (type)
			{
				case 1: 
					color = 0xff0000;
					answer = 0;
					break;
				case 2: 
					color = 0x00ff00;
					answer = 3;
					break;
				case 3: 
					color = 0x0000ff;
					answer = 5;
					break;
				case 4: 
					color = 0xffff00;
					answer = 6;
					break;
			}
			correct = (frame == answer);
		}
		
		public function change():void
		{
			frame = (frame + 1) % frames;
			correct = (frame == answer);
		}
	}
}