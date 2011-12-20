package
{
	import org.flixel.FlxGroup;
	import org.flixel.FlxSprite;
	import org.flixel.FlxG;
	import flash.utils.getQualifiedClassName;
	import flash.utils.getDefinitionByName;
	
	public class Balance extends FlxSprite
	{
		[Embed(source="data/balance.png")]
		private var ImgBal:Class;
		
		public var target:Object;
		public var stones:Array;
		public var contents:FlxGroup;
		public var index:int;
		public var weight:int;
		public var yUp:Number;
		public var yDown:Number;
		public var isUp:Boolean;
		
		public function Balance(X:Number, Y:Number)
		{
			super(X, Y, ImgBal);
			index = -1;
			weight = 0;
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
			isUp = true;
			yUp = Y;
			yDown = Y + 20;
		}
		
		override public function update():void
		{
			velocity.y = 0;
			if (isUp && y > yUp)
			{
				velocity.y = -50;
			}
			if (!isUp && y < yDown)
			{
				velocity.y = 50;
			}
			super.update();
			for each (var stone:FlxSprite in contents.members)
			{
				stone.y = y - stone.height;
			}
		}
		
		public function addStone(item:Class):Boolean
		{
			if (item == ItemStone1 || item == ItemStone2 || item == ItemStone3 || item == ItemStone4 || item == ItemStone5)
			{
				index++;
				stones[index] = getQualifiedClassName(item);
				var stone:FlxSprite = contents.members[index] as FlxSprite;
				stone.loadGraphic((item.Img));
				stone.visible = true;
				weight += item.weight;
				return true;
			}
			return false;
		}
		
		public function removeStone():void
		{
			(FlxG.state as PlayState).inventory.addItem(stones[index]);
			(contents.members[index] as FlxSprite).visible = false;
			weight -= getDefinitionByName(stones[index]).weight;
			trace(weight)
			index--;
		}
	}
}