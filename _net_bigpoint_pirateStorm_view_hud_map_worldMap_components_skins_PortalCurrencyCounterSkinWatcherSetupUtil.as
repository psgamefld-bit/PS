package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.map.worldMap.components.skins.PortalCurrencyCounterSkin;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_map_worldMap_components_skins_PortalCurrencyCounterSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_map_worldMap_components_skins_PortalCurrencyCounterSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PortalCurrencyCounterSkin.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_map_worldMap_components_skins_PortalCurrencyCounterSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

