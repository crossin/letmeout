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
			boundsMaxX = 1920;
			boundsMaxY = 640;
			bgColor = 0xffffeeee;
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
			addSpriteToLayer(null, ItemStone, ItemsGroup , 1877.000, 613.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Rock"
		}

		public function addSpritesForLayerLadder(onAddCallback:Function = null):void
		{
			addSpriteToLayer(null, Ladder, LadderGroup , 432.000, 320.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"isTop", value:true }, null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 432.000, 336.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 432.000, 352.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 432.000, 368.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 432.000, 384.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 432.000, 400.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 432.000, 416.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 592.000, 480.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"isTop", value:true }, null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 592.000, 496.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 592.000, 512.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 592.000, 528.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
			addSpriteToLayer(null, Ladder, LadderGroup , 592.000, 544.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"ladder"
		}

		public function addSpritesForLayerThings(onAddCallback:Function = null):void
		{
			addSpriteToLayer(null, DoorHorizontal, ThingsGroup , 861.000, 306.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"range", value:-500 }, null ), onAddCallback );//"door_h"
			linkedObjectDictionary[3] = addSpriteToLayer(null, DoorVertical, ThingsGroup , 1536.000, 577.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"range", value:50 }, null ), onAddCallback );//"door_v"
			linkedObjectDictionary[7] = addSpriteToLayer(null, Trigger, ThingsGroup , 1440.000, 614.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"trigger"
			addSpriteToLayer(null, Thorn, ThingsGroup , 499.000, 626.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			linkedObjectDictionary[0] = addSpriteToLayer(null, Trigger, ThingsGroup , 1376.000, 614.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"trigger"
			linkedObjectDictionary[4] = addSpriteToLayer(null, Trigger, ThingsGroup , 1344.000, 614.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"trigger"
			linkedObjectDictionary[6] = addSpriteToLayer(null, Trigger, ThingsGroup , 1408.000, 614.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"trigger"
			linkedObjectDictionary[5] = addSpriteToLayer(null, DoorVertical, ThingsGroup , 1520.000, 577.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"range", value:50 }, null ), onAddCallback );//"door_v"
			linkedObjectDictionary[1] = addSpriteToLayer(null, DoorVertical, ThingsGroup , 1504.000, 577.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"range", value:50 }, null ), onAddCallback );//"door_v"
			linkedObjectDictionary[2] = addSpriteToLayer(null, DoorVertical, ThingsGroup , 1488.000, 577.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"range", value:50 }, null ), onAddCallback );//"door_v"
			addSpriteToLayer(null, Box, ThingsGroup , 522.000, 483.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Box"
			addSpriteToLayer(null, Stone, ThingsGroup , 982.000, 582.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Stone"
			linkedObjectDictionary[8] = addSpriteToLayer(null, Trigger, ThingsGroup , 1077.000, 551.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"trigger"
			addSpriteToLayer(null, Thorn, ThingsGroup , 515.000, 626.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 757.000, 627.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Box, ThingsGroup , 128.000, 608.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Box"
			linkedObjectDictionary[9] = addSpriteToLayer(null, DoorVerticalBack, ThingsGroup , 1040.000, 513.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"range", value:50 }, null ), onAddCallback );//"door_vb"
			addSpriteToLayer(null, Thorn, ThingsGroup , 883.000, 421.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
		}

		public function addSpritesForLayerPlayer(onAddCallback:Function = null):void
		{
			addSpriteToLayer(null, Player, PlayerGroup , 80.000, 592.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"player"
		}

		public function generateObjectLinks(onAddCallback:Function = null):void
		{
			createLink(linkedObjectDictionary[0], linkedObjectDictionary[1], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[0], linkedObjectDictionary[2], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[0], linkedObjectDictionary[3], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[4], linkedObjectDictionary[1], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[4], linkedObjectDictionary[5], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[4], linkedObjectDictionary[3], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[6], linkedObjectDictionary[1], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[6], linkedObjectDictionary[5], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[6], linkedObjectDictionary[2], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[7], linkedObjectDictionary[1], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[7], linkedObjectDictionary[2], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[8], linkedObjectDictionary[9], onAddCallback, generateProperties( null ) );
		}

	}
}
