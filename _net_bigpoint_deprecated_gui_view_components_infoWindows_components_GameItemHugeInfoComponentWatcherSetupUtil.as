package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.infoWindows.components.GameItemHugeInfoComponent;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_infoWindows_components_GameItemHugeInfoComponentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_infoWindows_components_GameItemHugeInfoComponentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         GameItemHugeInfoComponent.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_infoWindows_components_GameItemHugeInfoComponentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[3] = new PropertyWatcher("rewardImage",{"propertyChange":true},[param4[4]],param2);
         param5[4] = new PropertyWatcher("width",{"propertyChange":true},[param4[4]],null);
         param5[3].updateParent(param1);
         param5[3].addChild(param5[4]);
      }
   }
}

