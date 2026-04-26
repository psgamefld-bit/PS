package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.map.worldMap.itemrenderers.WorldMapMapItemRenderer;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_map_worldMap_itemrenderers_WorldMapMapItemRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_map_worldMap_itemrenderers_WorldMapMapItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         WorldMapMapItemRenderer.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_map_worldMap_itemrenderers_WorldMapMapItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("normalSize",{"propertyChange":true},[param4[0],param4[1]],param2);
         param5[0].updateParent(param1);
      }
   }
}

