package {
	import org.flixel.FlxSprite;

	public class DoorUpdown extends FlxSprite {
		[Embed(source="data/door_ud.png")]
		private var Img:Class;

		public var yUp:Number;
		public var yDown:Number;
		public var isUp:Boolean;

		public function DoorUpdown(X:Number, Y:Number){
			super(X, Y, Img);

			immovable = true;
		}
		
		public function init(range:int):void{
			if (range < 0) {
				isUp = false;
				yUp = y - range;
				yDown = y;
			}else {
				isUp = true;
				yUp = y;
				yDown = y + range;
			}
		}
	}
}