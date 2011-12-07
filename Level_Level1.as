//Code generated with DAME. http://www.dambots.com

package 
{
	import org.flixel.*;
	import flash.utils.Dictionary;
	public class Level_Level1 extends BaseLevel
	{
		//Embedded media...
		[Embed(source="data/mapCSV_Level1_Map1.csv", mimeType="application/octet-stream")] public var CSV_Map1:Class;
		[Embed(source="../../../workspace/LetMeOut/src/data/tiles.png")] public var Img_Map1:Class;

		//Tilemaps
		public var layerMap1:FlxTilemap;

		//Sprites
		public var ItemsGroup:FlxGroup = new FlxGroup;
		public var LadderGroup:FlxGroup = new FlxGroup;
		public var ThingsGroup:FlxGroup = new FlxGroup;
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
			masterLayer.add(ItemsGroup);
			masterLayer.add(LadderGroup);
			masterLayer.add(ThingsGroup);
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
			addSpritesForLayerItems(onAddCallback);
			addSpritesForLayerLadder(onAddCallback);
			addSpritesForLayerThings(onAddCallback);
			addSpritesForLayerPlayer(onAddCallback);
			generateObjectLinks(onAddCallback);
			if ( parentObject != null )
				parentObject.add(masterLayer);
			else
				FlxG.state.add(masterLayer);
		}

		public function addSpritesForLayerItems(onAddCallback:Function = null):void
		{
			addSpriteToLayer(null, ItemKey, ItemsGroup , 128.000, 592.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Key"
			addSpriteToLayer(null, ItemKey, ItemsGroup , 528.000, 528.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Key"
			addSpriteToLayer(null, ItemBadge, ItemsGroup , 160.000, 592.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Badge"
			addSpriteToLayer(null, ItemStone, ItemsGroup , 256.000, 544.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Rock"
		}

		public function addSpritesForLayerLadder(onAddCallback:Function = null):void
		{
			addSpriteToLayer(null, Ladder, LadderGroup , 80.000, 528.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 48.000, 530.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 80.000, 544.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 47.000, 546.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 80.000, 560.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 49.000, 562.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 80.000, 576.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 51.000, 578.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 80.000, 592.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
		}

		public function addSpritesForLayerThings(onAddCallback:Function = null):void
		{
			addSpriteToLayer(null, Box, ThingsGroup , 101.000, 585.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Box"
			addSpriteToLayer(null, Box, ThingsGroup , 267.000, 597.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Box"
			addSpriteToLayer(null, Box, ThingsGroup , 386.000, 598.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Box"
			addSpriteToLayer(null, Box, ThingsGroup , 525.000, 591.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Box"
			addSpriteToLayer(null, Box, ThingsGroup , 175.000, 582.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Box"
			addSpriteToLayer(null, Box, ThingsGroup , 176.000, 570.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Box"
			addSpriteToLayer(null, Box, ThingsGroup , 175.000, 558.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Box"
			addSpriteToLayer(null, Box, ThingsGroup , 221.000, 564.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Box"
			addSpriteToLayer(null, Box, ThingsGroup , 280.000, 547.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Box"
			addSpriteToLayer(null, Stone, ThingsGroup , 473.000, 570.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Stone"
			addSpriteToLayer(null, Stone, ThingsGroup , 368.000, 555.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Stone"
			addSpriteToLayer(null, Stone, ThingsGroup , 245.000, 602.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Stone"
			addSpriteToLayer(null, DoorUpdown, ThingsGroup , 318.000, 573.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"doorud"
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
