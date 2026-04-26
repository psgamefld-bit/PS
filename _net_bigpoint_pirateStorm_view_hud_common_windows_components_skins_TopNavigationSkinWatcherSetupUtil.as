package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.common.windows.components.skins.TopNavigationSkin;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_common_windows_components_skins_TopNavigationSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_common_windows_components_skins_TopNavigationSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TopNavigationSkin.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_common_windows_components_skins_TopNavigationSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

