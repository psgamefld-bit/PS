package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.map.worldMap.WorldMapWindow;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_map_worldMap_WorldMapWindowWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_map_worldMap_WorldMapWindowWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         WorldMapWindow.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_map_worldMap_WorldMapWindowWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[4] = new PropertyWatcher("mapSwitchLabel",{"propertyChange":true},[param4[2]],param2);
         param5[5] = new PropertyWatcher("travelMode",{"propertyChange":true},[param4[3]],param2);
         param5[4].updateParent(param1);
         param5[5].updateParent(param1);
      }
   }
}

