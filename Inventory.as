package {
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
		
		public function addItem(name:String):void {
			var it:Class = getDefinitionByName(name) as Class;
			index = items.push(it) - 1;
			loadGraphic(it.Img);
		}
	}
}