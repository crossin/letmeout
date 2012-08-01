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
			boundsMin = new FlxPoint(0, 0);
			boundsMax = new FlxPoint(1920, 640);
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
			addSpriteToLayer(null, ItemStone1, ItemsGroup , 1877.000, 613.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"stone1"
			addSpriteToLayer(null, ItemKey, ItemsGroup , 736.000, 160.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Key"
			addSpriteToLayer(null, ItemKey, ItemsGroup , 1504.000, 160.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Key"
			addSpriteToLayer(null, ItemStone1, ItemsGroup , 1520.000, 176.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"stone1"
			addSpriteToLayer(null, ItemStone2, ItemsGroup , 1536.000, 176.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"stone2"
			addSpriteToLayer(null, ItemStone3, ItemsGroup , 1552.000, 176.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"stone3"
			addSpriteToLayer(null, ItemStone4, ItemsGroup , 1568.000, 176.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"stone4"
			addSpriteToLayer(null, ItemStone5, ItemsGroup , 1584.000, 176.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"stone5"
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
			linkedObjectDictionary[31] = addSpriteToLayer(null, VerticalDoor, ThingsGroup , 1138.000, 162.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"range", value:-50 }, null ), onAddCallback );//"door_v"
			linkedObjectDictionary[10] = addSpriteToLayer(null, HorizontalPlatform, ThingsGroup , 860.000, 306.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"range", value:-510 }, null ), onAddCallback );//"platform_h"
			addSpriteToLayer(null, VerticalPlatformAuto, ThingsGroup , 400.000, 240.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"range", value:-100 }, null ), onAddCallback );//"platform_va"
			addSpriteToLayer(null, HorizontalPlatformAuto, ThingsGroup , 450.000, 240.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"range", value:300 }, null ), onAddCallback );//"platform_ha"
			linkedObjectDictionary[4] = addSpriteToLayer(null, VerticalDoor, ThingsGroup , 1536.000, 577.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"range", value:50 }, null ), onAddCallback );//"door_v"
			linkedObjectDictionary[12] = addSpriteToLayer(null, Trigger, ThingsGroup , 1440.000, 614.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"trigger"
			addSpriteToLayer(null, Thorn, ThingsGroup , 499.000, 626.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			linkedObjectDictionary[0] = addSpriteToLayer(null, Trigger, ThingsGroup , 1408.000, 614.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"trigger"
			linkedObjectDictionary[2] = addSpriteToLayer(null, Trigger, ThingsGroup , 1376.000, 614.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"trigger"
			linkedObjectDictionary[5] = addSpriteToLayer(null, Trigger, ThingsGroup , 1344.000, 614.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"trigger"
			linkedObjectDictionary[3] = addSpriteToLayer(null, VerticalDoor, ThingsGroup , 1520.000, 577.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"range", value:50 }, null ), onAddCallback );//"door_v"
			linkedObjectDictionary[6] = addSpriteToLayer(null, VerticalDoor, ThingsGroup , 1504.000, 577.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"range", value:50 }, null ), onAddCallback );//"door_v"
			linkedObjectDictionary[1] = addSpriteToLayer(null, VerticalDoor, ThingsGroup , 1488.000, 577.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"range", value:50 }, null ), onAddCallback );//"door_v"
			addSpriteToLayer(null, Box, ThingsGroup , 522.000, 483.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Box"
			addSpriteToLayer(null, Stone, ThingsGroup , 983.000, 585.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Stone"
			linkedObjectDictionary[7] = addSpriteToLayer(null, Trigger, ThingsGroup , 1077.000, 551.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"trigger"
			addSpriteToLayer(null, Thorn, ThingsGroup , 515.000, 626.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 757.000, 627.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Box, ThingsGroup , 128.000, 608.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"Box"
			linkedObjectDictionary[8] = addSpriteToLayer(null, VerticalDoorBack, ThingsGroup , 1040.000, 513.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"range", value:50 }, null ), onAddCallback );//"door_vb"
			addSpriteToLayer(null, Thorn, ThingsGroup , 883.000, 421.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			linkedObjectDictionary[9] = addSpriteToLayer(null, Trigger, ThingsGroup , 944.000, 310.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"trigger"
			linkedObjectDictionary[11] = addSpriteToLayer(null, Trigger, ThingsGroup , 304.000, 278.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"trigger"
			addSpriteToLayer(null, Thorn, ThingsGroup , 497.000, 405.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 402.000, 277.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 418.000, 277.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 434.000, 277.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 450.000, 277.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 466.000, 277.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 482.000, 277.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 498.000, 277.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 514.000, 277.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 530.000, 277.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 674.000, 277.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 658.000, 277.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 642.000, 277.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 626.000, 277.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 610.000, 277.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 594.000, 277.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 578.000, 277.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 562.000, 277.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 546.000, 277.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 690.000, 277.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 706.000, 277.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 722.000, 277.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 738.000, 277.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 754.000, 277.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 770.000, 277.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			addSpriteToLayer(null, Thorn, ThingsGroup , 451.000, 421.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"thorn"
			linkedObjectDictionary[14] = addSpriteToLayer(null, ThornAuto, ThingsGroup , 563.000, 166.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"offset", value:2 }, null ), onAddCallback );//"thorn_a"
			linkedObjectDictionary[15] = addSpriteToLayer(null, ThornAuto, ThingsGroup , 579.000, 166.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"offset", value:1 }, null ), onAddCallback );//"thorn_a"
			linkedObjectDictionary[16] = addSpriteToLayer(null, ThornAuto, ThingsGroup , 595.000, 166.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"offset", value:0 }, null ), onAddCallback );//"thorn_a"
			linkedObjectDictionary[19] = addSpriteToLayer(null, ThornAuto, ThingsGroup , 643.000, 166.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"offset", value:0 }, null ), onAddCallback );//"thorn_a"
			linkedObjectDictionary[18] = addSpriteToLayer(null, ThornAuto, ThingsGroup , 627.000, 166.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"offset", value:1 }, null ), onAddCallback );//"thorn_a"
			linkedObjectDictionary[17] = addSpriteToLayer(null, ThornAuto, ThingsGroup , 611.000, 166.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"offset", value:2 }, null ), onAddCallback );//"thorn_a"
			linkedObjectDictionary[22] = addSpriteToLayer(null, ThornAuto, ThingsGroup , 691.000, 166.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"offset", value:0 }, null ), onAddCallback );//"thorn_a"
			linkedObjectDictionary[21] = addSpriteToLayer(null, ThornAuto, ThingsGroup , 675.000, 166.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"offset", value:1 }, null ), onAddCallback );//"thorn_a"
			linkedObjectDictionary[20] = addSpriteToLayer(null, ThornAuto, ThingsGroup , 659.000, 166.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"offset", value:2 }, null ), onAddCallback );//"thorn_a"
			linkedObjectDictionary[13] = addSpriteToLayer(null, Trigger, ThingsGroup , 528.000, 166.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"trigger"
			linkedObjectDictionary[24] = addSpriteToLayer(null, VerticalDoor, ThingsGroup , 788.000, 128.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"range", value:50 }, null ), onAddCallback );//"door_v"
			linkedObjectDictionary[23] = addSpriteToLayer(null, Lock, ThingsGroup , 783.000, 153.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"lock"
			linkedObjectDictionary[29] = addSpriteToLayer(null, Password, ThingsGroup , 1264.000, 352.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"color", value:1 }, null ), onAddCallback );//"password"
			linkedObjectDictionary[28] = addSpriteToLayer(null, Password, ThingsGroup , 1296.000, 352.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"color", value:2 }, null ), onAddCallback );//"password"
			linkedObjectDictionary[27] = addSpriteToLayer(null, Password, ThingsGroup , 1328.000, 352.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"color", value:3 }, null ), onAddCallback );//"password"
			linkedObjectDictionary[25] = addSpriteToLayer(null, Password, ThingsGroup , 1360.000, 352.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"color", value:4 }, null ), onAddCallback );//"password"
			linkedObjectDictionary[26] = addSpriteToLayer(null, VerticalDoor, ThingsGroup , 1408.000, 352.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"range", value:50 }, null ), onAddCallback );//"door_v"
			addSpriteToLayer(null, Gun, ThingsGroup , 1200.000, 160.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"gun"
			addSpriteToLayer(null, Gun, ThingsGroup , 1296.000, 160.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"gun"
			addSpriteToLayer(null, Gun, ThingsGroup , 1392.000, 160.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"gun"
			linkedObjectDictionary[32] = addSpriteToLayer(null, Boss, ThingsGroup , 1280.000, 32.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"boss"
			linkedObjectDictionary[30] = addSpriteToLayer(null, Trap, ThingsGroup , 1280.000, 144.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"trap"
			linkedObjectDictionary[33] = addSpriteToLayer(null, VerticalDoor, ThingsGroup , 1457.000, 112.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"range", value:50 }, null ), onAddCallback );//"door_v"
			linkedObjectDictionary[34] = addSpriteToLayer(null, Balance, ThingsGroup , 1616.000, 160.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"balance"
			linkedObjectDictionary[36] = addSpriteToLayer(null, Balance, ThingsGroup , 1712.000, 160.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"balance"
			linkedObjectDictionary[35] = addSpriteToLayer(null, VerticalDoor, ThingsGroup , 1632.000, 64.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"range", value:50 }, null ), onAddCallback );//"door_v"
			linkedObjectDictionary[37] = addSpriteToLayer(null, VerticalDoor, ThingsGroup , 1728.000, 64.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( { name:"range", value:50 }, null ), onAddCallback );//"door_v"
		}

		public function addSpritesForLayerPlayer(onAddCallback:Function = null):void
		{
			addSpriteToLayer(null, Player, PlayerGroup , 944.000, 592.000, 0.000, 1, 1, false, 1.000, 1.000, generateProperties( null ), onAddCallback );//"player"
		}

		public function generateObjectLinks(onAddCallback:Function = null):void
		{
			createLink(linkedObjectDictionary[0], linkedObjectDictionary[1], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[2], linkedObjectDictionary[3], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[2], linkedObjectDictionary[4], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[5], linkedObjectDictionary[6], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[5], linkedObjectDictionary[3], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[5], linkedObjectDictionary[1], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[7], linkedObjectDictionary[8], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[9], linkedObjectDictionary[10], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[11], linkedObjectDictionary[10], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[0], linkedObjectDictionary[4], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[0], linkedObjectDictionary[6], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[12], linkedObjectDictionary[6], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[2], linkedObjectDictionary[1], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[13], linkedObjectDictionary[14], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[13], linkedObjectDictionary[15], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[13], linkedObjectDictionary[16], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[13], linkedObjectDictionary[17], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[13], linkedObjectDictionary[18], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[13], linkedObjectDictionary[19], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[13], linkedObjectDictionary[20], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[13], linkedObjectDictionary[21], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[13], linkedObjectDictionary[22], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[23], linkedObjectDictionary[24], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[25], linkedObjectDictionary[26], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[27], linkedObjectDictionary[26], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[28], linkedObjectDictionary[26], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[29], linkedObjectDictionary[26], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[30], linkedObjectDictionary[31], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[30], linkedObjectDictionary[32], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[32], linkedObjectDictionary[31], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[32], linkedObjectDictionary[33], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[34], linkedObjectDictionary[35], onAddCallback, generateProperties( null ) );
			createLink(linkedObjectDictionary[36], linkedObjectDictionary[37], onAddCallback, generateProperties( null ) );
		}

	}
}
