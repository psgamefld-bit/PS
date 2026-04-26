package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.common.windows.skins.WindowSkin;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_common_windows_skins_WindowSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_common_windows_skins_WindowSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         WindowSkin.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_common_windows_skins_WindowSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[11] = new PropertyWatcher("topGroup",{"propertyChange":true},[param4[12]],param2);
         param5[12] = new PropertyWatcher("height",{"heightChanged":true},[param4[12]],null);
         param5[7] = new PropertyWatcher("topRightBg",{"propertyChange":true},[param4[7]],param2);
         param5[8] = new PropertyWatcher("width",{"propertyChange":true},[param4[7]],null);
         param5[5] = new PropertyWatcher("topLeftBg",{"propertyChange":true},[param4[6]],param2);
         param5[6] = new PropertyWatcher("width",{"propertyChange":true},[param4[6]],null);
         param5[11].updateParent(param1);
         param5[11].addChild(param5[12]);
         param5[7].updateParent(param1);
         param5[7].addChild(param5[8]);
         param5[5].updateParent(param1);
         param5[5].addChild(param5[6]);
      }
   }
}

