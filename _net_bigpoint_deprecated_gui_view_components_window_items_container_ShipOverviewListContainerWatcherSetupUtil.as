package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.window.items.container.ShipOverviewListContainer;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_window_items_container_ShipOverviewListContainerWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_window_items_container_ShipOverviewListContainerWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ShipOverviewListContainer.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_window_items_container_ShipOverviewListContainerWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("wideImage",{"propertyChange":true},[param4[1],param4[2],param4[3],param4[4],param4[7],param4[8]],param2);
         param5[3] = new PropertyWatcher("width",{"propertyChange":true},[param4[1]],null);
         param5[4] = new PropertyWatcher("height",{"propertyChange":true},[param4[2],param4[3],param4[4],param4[7],param4[8]],null);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
         param5[2].addChild(param5[4]);
      }
   }
}

