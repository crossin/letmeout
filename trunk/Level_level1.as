//Code generated with DAME. http://www.dambots.com

package 
{
	import org.flixel.*;
	public class Level_level1 extends BaseLevel
	{
		//Embedded media...
		[Embed(source="data/mapCSV_Group1_Map1.csv", mimeType="application/octet-stream")] public var CSV_Group1Map1:Class;
		[Embed(source="../../Mario/src/data/tiles.png")] public var Img_Group1Map1:Class;

		//Tilemaps
		public var layerGroup1Map1:FlxTilemap;

		//Sprites
		public var Group2Layer1Group:FlxGroup = new FlxGroup;


		public function Level_level1(addToStage:Boolean = true, onAddSpritesCallback:Function = null)
		{
			// Generate maps.
			layerGroup1Map1 = new FlxTilemap;
			layerGroup1Map1.loadMap( new CSV_Group1Map1, Img_Group1Map1, 16,16 );
			layerGroup1Map1.x = 0.000000;
			layerGroup1Map1.y = 0.000000;
			layerGroup1Map1.scrollFactor.x = 1.000000;
			layerGroup1Map1.scrollFactor.y = 1.000000;
			layerGroup1Map1.collideIndex = 1;
			layerGroup1Map1.drawIndex = 1;

			//Add layers to the master group in correct order.
			masterLayer.add(layerGroup1Map1);
			masterLayer.add(Group2Layer1Group);
			Group2Layer1Group.scrollFactor.x = 1.000000;
			Group2Layer1Group.scrollFactor.y = 1.000000;


			if ( addToStage )
			{
				addSpritesForLayerGroup2Layer1(onAddSpritesCallback);
				FlxG.state.add(masterLayer);
			}

			mainLayer = layerGroup1Map1;

			boundsMinX = 0;
			boundsMinY = 0;
			boundsMaxX = 640;
			boundsMaxY = 640;

		}

		override public function addSpritesForLayerGroup2Layer1(onAddCallback:Function = null):void
		{
			addSpriteToLayer(Player, Group2Layer1Group , 162.000, 462.000, 0.000, false, onAddCallback );//"player"
		}


	}
}
