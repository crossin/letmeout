package
{
	import org.flixel.FlxG;
	import org.flixel.FlxSprite;
	import org.flixel.FlxPoint;
	import flash.utils.getDefinitionByName;
	
	public class Inventory extends FlxSprite
	{
		//[Embed(source="data/key.png")]
		//private var Img:Class;
		public var items:Array;
		public var index:int;
		
		public function Inventory()
		{
			super(20, 20);
			scrollFactor = new FlxPoint(0, 0);
			//active = false;
			items = new Array();
			index = -1;
			visible = false;
		}
		
		override public function update():void
		{
			if (FlxG.keys.justPressed("X"))
			{
				switchItem(1);
			}
			if (FlxG.keys.justPressed("Z"))
			{
				switchItem(-1);
			}
			//if (FlxG.keys.justPressed("CONTROL"))
			//{
				//useItem();
			//}
		}
		
		public function addItem(name:String):void
		{
			var it:Class = getDefinitionByName(name) as Class;
			index = items.push(it) - 1;
			loadGraphic(it.Img);
			visible = true;
		}
		
		public function switchItem(offset:int):void
		{
			var len:int = items.length;
			if (len > 1)
			{
				index = (index + offset + len) % len;
				loadGraphic(items[index].Img);
			}
		}
		
		public function useItem():void
		{
			for (var i:int = index; i < items.length - 1; i++)
			{
				items[i] = items[i + 1];
			}
			items.pop();
			index = (index == items.length) ? index - 1 : index;
			if (index < 0)
			{
				visible = false;
			}
			else
			{
				loadGraphic(items[index].Img);
			}
		}
		
		public function getItem():Class
		{
			if (index >= 0) {
				return items[index];
			}
			return null;
		}
	}
}