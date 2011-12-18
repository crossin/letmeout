package {
	import org.flixel.FlxSprite;

	public class Trap extends FlxSprite {
		public var targets:Array;
		public var triggered:Boolean;

		public function Trap(X:Number, Y:Number){
			super(X, Y);
			makeGraphic(32, 48, 0x00000000);
			targets = new Array();
			triggered = false;
		}
	}
}