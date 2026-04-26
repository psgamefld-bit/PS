package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.map.zoneMap.ZoneMapWindow;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_map_zoneMap_ZoneMapWindowWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_map_zoneMap_ZoneMapWindowWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ZoneMapWindow.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_map_zoneMap_ZoneMapWindowWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[1] = new PropertyWatcher("mapSwitchLabel",{"propertyChange":true},[param4[0]],param2);
         param5[1].updateParent(param1);
      }
   }
}

