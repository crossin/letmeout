package {
	import org.flixel.FlxSprite;
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
			//isCarried = false;
		}

		//override public function update():void {
			//super.update();
			//if (isCarried){
				//var pl:Player = (FlxG.state as PlayState).player;
				//x = pl.x + pl.width / 2 - width / 2;
				//y = pl.y - height;
			//}
		//}
	}
}