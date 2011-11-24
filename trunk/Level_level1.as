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
		public var BoxLayer1Group:FlxGroup = new FlxGroup;
		public var PlayerLayer1Group:FlxGroup = new FlxGroup;


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
			masterLayer.add(BoxLayer1Group);
			BoxLayer1Group.scrollFactor.x = 1.000000;
			BoxLayer1Group.scrollFactor.y = 1.000000;
			masterLayer.add(PlayerLayer1Group);
			PlayerLayer1Group.scrollFactor.x = 1.000000;
			PlayerLayer1Group.scrollFactor.y = 1.000000;


			if ( addToStage )
			{
				addSpritesForLayerBoxLayer1(onAddSpritesCallback);
				addSpritesForLayerPlayerLayer1(onAddSpritesCallback);
				FlxG.state.add(masterLayer);
			}

			mainLayer = layerWallMap1;

			boundsMinX = 0;
			boundsMinY = 0;
			boundsMaxX = 640;
			boundsMaxY = 640;

		}

		override public function addSpritesForLayerBoxLayer1(onAddCallback:Function = null):void
		{
			addSpriteToLayer(Crate, BoxLayer1Group , 101.000, 585.000, 0.000, false, onAddCallback );//"Box"
			addSpriteToLayer(Crate, BoxLayer1Group , 267.000, 597.000, 0.000, false, onAddCallback );//"Box"
			addSpriteToLayer(Crate, BoxLayer1Group , 386.000, 598.000, 0.000, false, onAddCallback );//"Box"
			addSpriteToLayer(Crate, BoxLayer1Group , 525.000, 591.000, 0.000, false, onAddCallback );//"Box"
			addSpriteToLayer(Crate, BoxLayer1Group , 175.000, 582.000, 0.000, false, onAddCallback );//"Box"
			addSpriteToLayer(Crate, BoxLayer1Group , 176.000, 570.000, 0.000, false, onAddCallback );//"Box"
			addSpriteToLayer(Crate, BoxLayer1Group , 175.000, 558.000, 0.000, false, onAddCallback );//"Box"
			addSpriteToLayer(Crate, BoxLayer1Group , 221.000, 564.000, 0.000, false, onAddCallback );//"Box"
			addSpriteToLayer(Crate, BoxLayer1Group , 280.000, 547.000, 0.000, false, onAddCallback );//"Box"
		}

		override public function addSpritesForLayerPlayerLayer1(onAddCallback:Function = null):void
		{
			addSpriteToLayer(Player, PlayerLayer1Group , 167.000, 471.000, 0.000, false, onAddCallback );//"player"
		}


	}
}
