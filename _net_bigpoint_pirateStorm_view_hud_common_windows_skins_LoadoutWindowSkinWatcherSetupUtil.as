package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.common.windows.skins.LoadoutWindowSkin;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_common_windows_skins_LoadoutWindowSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_common_windows_skins_LoadoutWindowSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         LoadoutWindowSkin.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_common_windows_skins_LoadoutWindowSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[8] = new PropertyWatcher("topGroup",{"propertyChange":true},[param4[8]],param2);
         param5[9] = new PropertyWatcher("height",{"heightChanged":true},[param4[8]],null);
         param5[8].updateParent(param1);
         param5[8].addChild(param5[9]);
      }
   }
}

