package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.window.items.renderer.GovernorDetailInfo;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_window_items_renderer_GovernorDetailInfoWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_window_items_renderer_GovernorDetailInfoWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         GovernorDetailInfo.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_window_items_renderer_GovernorDetailInfoWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

