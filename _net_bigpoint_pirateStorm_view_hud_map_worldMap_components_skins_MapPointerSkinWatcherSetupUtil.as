package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.map.worldMap.components.skins.MapPointerSkin;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_map_worldMap_components_skins_MapPointerSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_map_worldMap_components_skins_MapPointerSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MapPointerSkin.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_map_worldMap_components_skins_MapPointerSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[13] = new PropertyWatcher("pointer",{"propertyChange":true},[param4[12],param4[14]],param2);
         param5[14] = new PropertyWatcher("width",{"propertyChange":true},[param4[12],param4[14]],null);
         param5[6] = new PropertyWatcher("mapTravelGroup",{"propertyChange":true},[param4[6]],param2);
         param5[7] = new PropertyWatcher("visible",{
            "hide":true,
            "show":true
         },[param4[6]],null);
         param5[15] = new PropertyWatcher("labelGroup",{"propertyChange":true},[param4[15]],param2);
         param5[16] = new PropertyWatcher("height",{"heightChanged":true},[param4[15]],null);
         param5[4] = new PropertyWatcher("hostComponent",{"propertyChange":true},[param4[5]],param2);
         param5[5] = new PropertyWatcher("travelMode",{"propertyChange":true},[param4[5]],null);
         param5[13].updateParent(param1);
         param5[13].addChild(param5[14]);
         param5[6].updateParent(param1);
         param5[6].addChild(param5[7]);
         param5[15].updateParent(param1);
         param5[15].addChild(param5[16]);
         param5[4].updateParent(param1);
         param5[4].addChild(param5[5]);
      }
   }
}

