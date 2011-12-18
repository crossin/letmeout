package
{
	import org.flixel.FlxGroup;
	import org.flixel.FlxSprite;
	import org.flixel.FlxG;
	import flash.utils.getQualifiedClassName;
	
	public class Balance extends FlxSprite
	{
		[Embed(source="data/balance.png")]
		private var ImgBal:Class;
		
		//public var targets:Array;
		public var stones:Array;
		public var contents:FlxGroup;
		public var index:int;
		
		public function Balance(X:Number, Y:Number)
		{
			super(X, Y, ImgBal);
			index = -1;
			contents = new FlxGroup(5);
			var s:FlxSprite;
			for (var i:int = 0; i < 5; i++)
			{
				s = new FlxSprite();
				s.x = x + i * 10 + 4;
				s.visible = false;
				contents.add(s);
			}
			stones = new Array();
		}
		
		override public function update():void
		{
			for each (var stone:FlxSprite in contents.members)
			{
				stone.y = y - stone.height;
			}
			super.update();
		}
		
		public function addStone(item:Class):Boolean
		{
			if (item == ItemStone)
			{
				index++;
				stones[index] = getQualifiedClassName(item);
				var stone:FlxSprite = contents.members[index] as FlxSprite;
				stone.loadGraphic((item.Img));
				stone.visible = true;
				return true;
			}
			return false;
		}
		
		public function removeStone():void
		{
			(FlxG.state as PlayState).inventory.addItem(stones[index]);
			(contents.members[index] as FlxSprite).visible = false;
			index--;
		}
	}
}