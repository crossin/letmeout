package {
	import org.flixel.FlxG;
	import org.flixel.FlxSprite;
	import org.flixel.FlxPoint;
	import flash.utils.getDefinitionByName;

	public class Inventory extends FlxSprite {
		//[Embed(source="data/key.png")]
		//private var Img:Class;
		public var items:Array;
		public var index:int;
		
		public function Inventory(){
			super(20, 20);
			scrollFactor = new FlxPoint(0, 0);
			//active = false;
			items = new Array();
			index = 0;
		}
		
		override public function update():void {
			if (FlxG.keys.justPressed("X")) {
				switchItem(1);
			}
			if (FlxG.keys.justPressed("Z")) {
				switchItem(-1);
			}
		}
		public function addItem(name:String):void {
			var it:Class = getDefinitionByName(name) as Class;
			index = items.push(it) - 1;
			loadGraphic(it.Img);
		}
		
		public function switchItem(offset:int):void {
			if (items.length > 1) {
				index = (index + offset) % items.length;
				//loadGraphic(items[index].Img);
				trace(items[index])
			}
		}
	}
}