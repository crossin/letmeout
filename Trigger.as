package {
	import org.flixel.FlxSprite;

	public class Trigger extends FlxSprite {
		[Embed(source="data/trigger.png")]
		private var Img:Class;
		
		public var target:Object = null;

		public function Trigger(X:Number, Y:Number){
			super(X, Y, Img);
		}
	}
}