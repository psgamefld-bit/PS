package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.common.windows.skins.DynamicIconInfoWindowSkin;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_common_windows_skins_DynamicIconInfoWindowSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_common_windows_skins_DynamicIconInfoWindowSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DynamicIconInfoWindowSkin.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_common_windows_skins_DynamicIconInfoWindowSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[11] = new PropertyWatcher("topGroup",{"propertyChange":true},[param4[12]],param2);
         param5[12] = new PropertyWatcher("height",{"heightChanged":true},[param4[12]],null);
         param5[5] = new PropertyWatcher("topRightBg",{"propertyChange":true},[param4[5]],param2);
         param5[6] = new PropertyWatcher("width",{"propertyChange":true},[param4[5]],null);
         param5[3] = new PropertyWatcher("topLeftBg",{"propertyChange":true},[param4[4]],param2);
         param5[4] = new PropertyWatcher("width",{"propertyChange":true},[param4[4]],null);
         param5[11].updateParent(param1);
         param5[11].addChild(param5[12]);
         param5[5].updateParent(param1);
         param5[5].addChild(param5[6]);
         param5[3].updateParent(param1);
         param5[3].addChild(param5[4]);
      }
   }
}

