package
{
	import org.flixel.*;
	[SWF(width="640", height="480", backgroundColor="#000000")]
	//[SWF(width="320", height="240", backgroundColor="#000000")]
	[Frame(factoryClass="Preloader")]

	public class LetMeOut extends FlxGame
	{
		public function LetMeOut()
		{
			super(320,240,PlayState,2);
			//super(320,240,PlayState,1);
		}
	}
}
