package {
	import org.flixel.FlxSprite;

	public class Lock extends FlxSprite {

		public function Lock(X:Number, Y:Number){
			super(X, Y);
			immovable = true;
		}
	}
}