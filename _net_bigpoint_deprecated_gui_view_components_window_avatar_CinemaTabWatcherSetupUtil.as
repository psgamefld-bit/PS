package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.window.avatar.CinemaTab;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_window_avatar_CinemaTabWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_window_avatar_CinemaTabWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CinemaTab.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_window_avatar_CinemaTabWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("background",{"propertyChange":true},[param4[0]],param2);
         param5[1] = new PropertyWatcher("height",{"propertyChange":true},[param4[0]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
      }
   }
}

