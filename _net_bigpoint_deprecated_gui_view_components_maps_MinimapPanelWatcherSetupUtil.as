package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.maps.MinimapPanel;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_maps_MinimapPanelWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_maps_MinimapPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MinimapPanel.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_maps_MinimapPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

