package {
	import org.flixel.FlxSprite;

	public class DoorUpdown extends FlxSprite {
		[Embed(source="data/door_ud.png")]
		private var Img:Class;

		//public var isCarried:Boolean;

		public function DoorUpdown(X:Number, Y:Number){
			super(X, Y, Img);

			immovable = true;
		}
	}
}