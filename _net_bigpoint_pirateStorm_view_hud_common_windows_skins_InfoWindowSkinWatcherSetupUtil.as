package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.common.windows.skins.InfoWindowSkin;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_common_windows_skins_InfoWindowSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_common_windows_skins_InfoWindowSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         InfoWindowSkin.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_common_windows_skins_InfoWindowSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[5] = new PropertyWatcher("topLeftBg",{"propertyChange":true},[param4[6]],param2);
         param5[6] = new PropertyWatcher("width",{"propertyChange":true},[param4[6]],null);
         param5[12] = new PropertyWatcher("topGroup",{"propertyChange":true},[param4[13]],param2);
         param5[13] = new PropertyWatcher("height",{"heightChanged":true},[param4[13]],null);
         param5[7] = new PropertyWatcher("topRightBg",{"propertyChange":true},[param4[7]],param2);
         param5[8] = new PropertyWatcher("width",{"propertyChange":true},[param4[7]],null);
         param5[5].updateParent(param1);
         param5[5].addChild(param5[6]);
         param5[12].updateParent(param1);
         param5[12].addChild(param5[13]);
         param5[7].updateParent(param1);
         param5[7].addChild(param5[8]);
      }
   }
}

