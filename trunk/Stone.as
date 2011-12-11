package
{
	import org.flixel.FlxSprite;
	import org.flixel.FlxG;
	
	public class Stone extends FlxSprite
	{
		[Embed(source="data/box_heavy.png")]
		private var Img:Class;
		
		public var isPulled:Boolean;
		
		public function Stone(X:Number, Y:Number)
		{
			super(X, Y, Img);
			height = height - 1; //draw the crate 1 pixel into the floor
			acceleration.y = 400;
			//acceleration.x = 200;
			//velocity.x = 40;
			drag.x = 400;
			maxVelocity.y = 200;
			isPulled = false;
			
			//moves = false;
			//mass = 100;
			//trace(mass)
			//immovable = true;
			//this.
			//allowCollisions = DOWN;
			//solid = true;
			//isCarried = false;
		
		}
		
		override public function update():void
		{
			if (!isPulled && isTouching(DOWN)) {
				moves = false;
				immovable = true;
			}
			super.update();
		}
	
		public function move():void {
			moves = true;
			immovable = false;
			isPulled = true;
		}
		
		public function stop():void {
			isPulled = false;
			velocity.x = 0;
		}
	}
}