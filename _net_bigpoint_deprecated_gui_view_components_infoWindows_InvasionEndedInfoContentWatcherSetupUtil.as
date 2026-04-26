package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.infoWindows.InvasionEndedInfoContent;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_infoWindows_InvasionEndedInfoContentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_infoWindows_InvasionEndedInfoContentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         InvasionEndedInfoContent.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_infoWindows_InvasionEndedInfoContentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[3] = new PropertyWatcher("imageTopLeft",{"propertyChange":true},[param4[2]],param2);
         param5[4] = new PropertyWatcher("width",{"propertyChange":true},[param4[2]],null);
         param5[3].updateParent(param1);
         param5[3].addChild(param5[4]);
      }
   }
}

