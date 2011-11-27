//Code generated with DAME. http://www.dambots.com

package 
{
	import org.flixel.*;
	public class Level_level1 extends BaseLevel
	{
		//Embedded media...
		[Embed(source="data/mapCSV_Wall_Map1.csv", mimeType="application/octet-stream")] public var CSV_WallMap1:Class;
		[Embed(source="data/tiles.png")] public var Img_WallMap1:Class;

		//Tilemaps
		public var layerWallMap1:FlxTilemap;

		//Sprites
		public var NoCollideLadderGroup:FlxGroup = new FlxGroup;
		public var CollideBoxGroup:FlxGroup = new FlxGroup;
		public var CollideStoneGroup:FlxGroup = new FlxGroup;
		public var ItemItemGroup:FlxGroup = new FlxGroup;
		public var PlayerPlayerGroup:FlxGroup = new FlxGroup;


		public function Level_level1(addToStage:Boolean = true, onAddSpritesCallback:Function = null)
		{
			// Generate maps.
			layerWallMap1 = new FlxTilemap;
			layerWallMap1.loadMap( new CSV_WallMap1, Img_WallMap1, 16,16 );
			layerWallMap1.x = 0.000000;
			layerWallMap1.y = 0.000000;
			layerWallMap1.scrollFactor.x = 1.000000;
			layerWallMap1.scrollFactor.y = 1.000000;
			layerWallMap1.collideIndex = 1;
			layerWallMap1.drawIndex = 1;

			//Add layers to the master group in correct order.
			masterLayer.add(layerWallMap1);
			masterLayer.add(NoCollideLadderGroup);
			NoCollideLadderGroup.scrollFactor.x = 1.000000;
			NoCollideLadderGroup.scrollFactor.y = 1.000000;
			masterLayer.add(CollideBoxGroup);
			CollideBoxGroup.scrollFactor.x = 1.000000;
			CollideBoxGroup.scrollFactor.y = 1.000000;
			masterLayer.add(CollideStoneGroup);
			CollideStoneGroup.scrollFactor.x = 1.000000;
			CollideStoneGroup.scrollFactor.y = 1.000000;
			masterLayer.add(ItemItemGroup);
			ItemItemGroup.scrollFactor.x = 1.000000;
			ItemItemGroup.scrollFactor.y = 1.000000;
			masterLayer.add(PlayerPlayerGroup);
			PlayerPlayerGroup.scrollFactor.x = 1.000000;
			PlayerPlayerGroup.scrollFactor.y = 1.000000;


			if ( addToStage )
			{
				addSpritesForLayerNoCollideLadder(onAddSpritesCallback);
				addSpritesForLayerCollideBox(onAddSpritesCallback);
				addSpritesForLayerCollideStone(onAddSpritesCallback);
				addSpritesForLayerItemItem(onAddSpritesCallback);
				addSpritesForLayerPlayerPlayer(onAddSpritesCallback);
				FlxG.state.add(masterLayer);
			}

			mainLayer = layerWallMap1;

			boundsMinX = 0;
			boundsMinY = 0;
			boundsMaxX = 640;
			boundsMaxY = 640;

		}

		override public function addSpritesForLayerNoCollideLadder(onAddCallback:Function = null):void
		{
			addSpriteToLayer(Ladder, NoCollideLadderGroup , 47.000, 546.000, 0.000, false, onAddCallback );//"ladder"
			addSpriteToLayer(Ladder, NoCollideLadderGroup , 48.000, 530.000, 0.000, false, onAddCallback );//"ladder"
			addSpriteToLayer(Ladder, NoCollideLadderGroup , 49.000, 562.000, 0.000, false, onAddCallback );//"ladder"
			addSpriteToLayer(Ladder, NoCollideLadderGroup , 51.000, 578.000, 0.000, false, onAddCallback );//"ladder"
			addSpriteToLayer(Ladder, NoCollideLadderGroup , 80.000, 592.000, 0.000, false, onAddCallback );//"ladder"
			addSpriteToLayer(Ladder, NoCollideLadderGroup , 80.000, 576.000, 0.000, false, onAddCallback );//"ladder"
			addSpriteToLayer(Ladder, NoCollideLadderGroup , 80.000, 560.000, 0.000, false, onAddCallback );//"ladder"
			addSpriteToLayer(Ladder, NoCollideLadderGroup , 80.000, 544.000, 0.000, false, onAddCallback );//"ladder"
			addSpriteToLayer(Ladder, NoCollideLadderGroup , 80.000, 528.000, 0.000, false, onAddCallback );//"ladder"
		}

		override public function addSpritesForLayerCollideBox(onAddCallback:Function = null):void
		{
			addSpriteToLayer(Box, CollideBoxGroup , 101.000, 585.000, 0.000, false, onAddCallback );//"Box"
			addSpriteToLayer(Box, CollideBoxGroup , 267.000, 597.000, 0.000, false, onAddCallback );//"Box"
			addSpriteToLayer(Box, CollideBoxGroup , 386.000, 598.000, 0.000, false, onAddCallback );//"Box"
			addSpriteToLayer(Box, CollideBoxGroup , 525.000, 591.000, 0.000, false, onAddCallback );//"Box"
			addSpriteToLayer(Box, CollideBoxGroup , 175.000, 582.000, 0.000, false, onAddCallback );//"Box"
			addSpriteToLayer(Box, CollideBoxGroup , 176.000, 570.000, 0.000, false, onAddCallback );//"Box"
			addSpriteToLayer(Box, CollideBoxGroup , 175.000, 558.000, 0.000, false, onAddCallback );//"Box"
			addSpriteToLayer(Box, CollideBoxGroup , 221.000, 564.000, 0.000, false, onAddCallback );//"Box"
			addSpriteToLayer(Box, CollideBoxGroup , 280.000, 547.000, 0.000, false, onAddCallback );//"Box"
		}

		override public function addSpritesForLayerCollideStone(onAddCallback:Function = null):void
		{
			addSpriteToLayer(Stone, CollideStoneGroup , 245.000, 604.000, 0.000, false, onAddCallback );//"Stone"
			addSpriteToLayer(Stone, CollideStoneGroup , 366.000, 559.000, 0.000, false, onAddCallback );//"Stone"
			addSpriteToLayer(Stone, CollideStoneGroup , 476.000, 571.000, 0.000, false, onAddCallback );//"Stone"
		}

		override public function addSpritesForLayerItemItem(onAddCallback:Function = null):void
		{
			addSpriteToLayer(ItemKey, ItemItemGroup , 128.000, 592.000, 0.000, false, onAddCallback );//"Key"
			addSpriteToLayer(ItemKey, ItemItemGroup , 528.000, 528.000, 0.000, false, onAddCallback );//"Key"
		}

		override public function addSpritesForLayerPlayerPlayer(onAddCallback:Function = null):void
		{
			addSpriteToLayer(Player, PlayerPlayerGroup , 167.000, 471.000, 0.000, false, onAddCallback );//"player"
		}


	}
}
