package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.infoWindows.TutorialCompletedInfoContent;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_infoWindows_TutorialCompletedInfoContentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_infoWindows_TutorialCompletedInfoContentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TutorialCompletedInfoContent.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_infoWindows_TutorialCompletedInfoContentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[3] = new PropertyWatcher("background",{"propertyChange":true},[param4[2]],param2);
         param5[4] = new PropertyWatcher("width",{"propertyChange":true},[param4[2]],null);
         param5[13] = new PropertyWatcher("portraitRight",{"propertyChange":true},[param4[12]],param2);
         param5[14] = new PropertyWatcher("width",{"propertyChange":true},[param4[12]],null);
         param5[10] = new PropertyWatcher("portraitLeft",{"propertyChange":true},[param4[9]],param2);
         param5[11] = new PropertyWatcher("width",{"propertyChange":true},[param4[9]],null);
         param5[7] = new PropertyWatcher("portraitCenter",{"propertyChange":true},[param4[6]],param2);
         param5[8] = new PropertyWatcher("width",{"propertyChange":true},[param4[6]],null);
         param5[3].updateParent(param1);
         param5[3].addChild(param5[4]);
         param5[13].updateParent(param1);
         param5[13].addChild(param5[14]);
         param5[10].updateParent(param1);
         param5[10].addChild(param5[11]);
         param5[7].updateParent(param1);
         param5[7].addChild(param5[8]);
      }
   }
}

