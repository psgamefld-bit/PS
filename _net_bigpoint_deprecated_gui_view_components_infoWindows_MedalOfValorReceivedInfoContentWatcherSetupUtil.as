package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.infoWindows.MedalOfValorReceivedInfoContent;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_infoWindows_MedalOfValorReceivedInfoContentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_infoWindows_MedalOfValorReceivedInfoContentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MedalOfValorReceivedInfoContent.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_infoWindows_MedalOfValorReceivedInfoContentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[7] = new PropertyWatcher("portraitCenter",{"propertyChange":true},[param4[6]],param2);
         param5[8] = new PropertyWatcher("width",{"propertyChange":true},[param4[6]],null);
         param5[3] = new PropertyWatcher("background",{"propertyChange":true},[param4[2]],param2);
         param5[4] = new PropertyWatcher("width",{"propertyChange":true},[param4[2]],null);
         param5[11] = new PropertyWatcher("rewardImage",{"propertyChange":true},[param4[11]],param2);
         param5[12] = new PropertyWatcher("width",{"propertyChange":true},[param4[11]],null);
         param5[7].updateParent(param1);
         param5[7].addChild(param5[8]);
         param5[3].updateParent(param1);
         param5[3].addChild(param5[4]);
         param5[11].updateParent(param1);
         param5[11].addChild(param5[12]);
      }
   }
}

