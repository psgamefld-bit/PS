package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.maps.event.EventMapDiscountProgressbar;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_maps_event_EventMapDiscountProgressbarWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_maps_event_EventMapDiscountProgressbarWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         EventMapDiscountProgressbar.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_maps_event_EventMapDiscountProgressbarWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("width",{"widthChanged":true},[param4[0]],param2);
         param5[0].updateParent(param1);
      }
   }
}

