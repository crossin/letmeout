package {
	import org.flixel.FlxSprite;
	import org.flixel.FlxObject;
	import org.flixel.FlxG;

	public class Crate extends FlxSprite {
		[Embed(source="data/crate.png")]
		private var ImgCrate:Class;

		//public var isCarried:Boolean;

		public function Crate(X:Number, Y:Number){
			super(X, Y, ImgCrate);
			height = height - 1; //draw the crate 1 pixel into the floor
			acceleration.y = 400;
			drag.x = 200;
			maxVelocity.y = 200;

			//isCarried = false;

		}
		
		override public function hitTop(Contact:FlxObject,Velocity:Number):void
		{
			Contact.velocity.y = 0;
			if(!fixed)
				velocity.y = Velocity;
		}
	}
}