//Code generated with DAME. http://www.dambots.com

package 
{
	import org.flixel.*;
	import flash.utils.Dictionary;
	public class Level_Level1 extends BaseLevel
	{
		//Embedded media...
		[Embed(source="data/mapCSV_Level1_Map1.csv", mimeType="application/octet-stream")] public var CSV_Map1:Class;
		[Embed(source="data/tiles.png")] public var Img_Map1:Class;

		//Tilemaps
		public var layerMap1:FlxTilemap;

		//Sprites
		public var ItemGroup:FlxGroup = new FlxGroup;
		public var LadderGroup:FlxGroup = new FlxGroup;
		public var BoxGroup:FlxGroup = new FlxGroup;
		public var StoneGroup:FlxGroup = new FlxGroup;
		public var PlayerGroup:FlxGroup = new FlxGroup;

		//Properties


		public function Level_Level1(addToStage:Boolean = true, onAddCallback:Function = null, parentObject:Object = null)
		{
			// Generate maps.
			var properties:Array = [];
			var tileProperties:Dictionary = new Dictionary;

			properties = generateProperties( null );
			layerMap1 = addTilemap( CSV_Map1, Img_Map1, 0.000, 0.000, 16, 16, 1.000, 1.000, true, 1, 1, properties, onAddCallback );

			//Add layers to the master group in correct order.
			masterLayer.add(layerMap1);
			masterLayer.add(ItemGroup);
			masterLayer.add(LadderGroup);
			masterLayer.add(BoxGroup);
			masterLayer.add(StoneGroup);
			masterLayer.add(PlayerGroup);

			if ( addToStage )
				createObjects(onAddCallback, parentObject);

			boundsMinX = 0;
			boundsMinY = 0;
			boundsMaxX = 640;
			boundsMaxY = 640;
			bgColor = 0xff000000;
		}

		override public function createObjects(onAddCallback:Function = null, parentObject:Object = null):void
		{
			addSpritesForLayerItem(onAddCallback);
			addSpritesForLayerLadder(onAddCallback);
			addSpritesForLayerBox(onAddCallback);
			addSpritesForLayerStone(onAddCallback);
			addSpritesForLayerPlayer(onAddCallback);
			generateObjectLinks(onAddCallback);
			if ( parentObject != null )
				parentObject.add(masterLayer);
			else
				FlxG.state.add(masterLayer);
		}

		public function addSpritesForLayerItem(onAddCallback:Function = null):void
		{
			addSpriteToLayer(null, ItemKey, ItemGroup , 128.000, 592.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Key"
			addSpriteToLayer(null, ItemKey, ItemGroup , 528.000, 528.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Key"
			addSpriteToLayer(null, ItemBadge, ItemGroup , 160.000, 592.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Badge"
			addSpriteToLayer(null, ItemStone, ItemGroup , 256.000, 544.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Rock"
		}

		public function addSpritesForLayerLadder(onAddCallback:Function = null):void
		{
			addSpriteToLayer(null, Ladder, LadderGroup , 47.000, 546.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 48.000, 530.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 49.000, 562.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 51.000, 578.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 80.000, 592.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 80.000, 576.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 80.000, 560.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 80.000, 544.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 80.000, 528.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
		}

		public function addSpritesForLayerBox(onAddCallback:Function = null):void
		{
			addSpriteToLayer(null, Box, BoxGroup , 101.000, 585.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Box"
			addSpriteToLayer(null, Box, BoxGroup , 267.000, 597.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Box"
			addSpriteToLayer(null, Box, BoxGroup , 386.000, 598.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Box"
			addSpriteToLayer(null, Box, BoxGroup , 525.000, 591.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Box"
			addSpriteToLayer(null, Box, BoxGroup , 175.000, 582.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Box"
			addSpriteToLayer(null, Box, BoxGroup , 176.000, 570.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Box"
			addSpriteToLayer(null, Box, BoxGroup , 175.000, 558.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Box"
			addSpriteToLayer(null, Box, BoxGroup , 221.000, 564.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Box"
			addSpriteToLayer(null, Box, BoxGroup , 280.000, 547.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Box"
		}

		public function addSpritesForLayerStone(onAddCallback:Function = null):void
		{
			addSpriteToLayer(null, Stone, StoneGroup , 245.000, 604.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Stone"
			addSpriteToLayer(null, Stone, StoneGroup , 366.000, 559.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Stone"
			addSpriteToLayer(null, Stone, StoneGroup , 476.000, 571.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Stone"
		}

		public function addSpritesForLayerPlayer(onAddCallback:Function = null):void
		{
			addSpriteToLayer(null, Player, PlayerGroup , 167.000, 471.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"player"
		}

		public function generateObjectLinks(onAddCallback:Function = null):void
		{
		}

	}
}
