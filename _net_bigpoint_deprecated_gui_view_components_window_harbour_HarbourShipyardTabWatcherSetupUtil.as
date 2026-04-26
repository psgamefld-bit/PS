package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.window.harbour.HarbourShipyardTab;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_window_harbour_HarbourShipyardTabWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_window_harbour_HarbourShipyardTabWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         HarbourShipyardTab.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_window_harbour_HarbourShipyardTabWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[14] = new PropertyWatcher("changeIcon",{"propertyChange":true},[param4[10]],param2);
         param5[15] = new PropertyWatcher("width",{"widthChanged":true},[param4[10]],null);
         param5[4] = new PropertyWatcher("arrowLeft",{"propertyChange":true},[param4[3]],param2);
         param5[5] = new PropertyWatcher("width",{"widthChanged":true},[param4[3]],null);
         param5[17] = new PropertyWatcher("wreckIcon",{"propertyChange":true},[param4[12]],param2);
         param5[18] = new PropertyWatcher("width",{"widthChanged":true},[param4[12]],null);
         param5[11] = new PropertyWatcher("activeIcon",{"propertyChange":true},[param4[8]],param2);
         param5[12] = new PropertyWatcher("width",{"propertyChange":true},[param4[8]],null);
         param5[8] = new PropertyWatcher("arrowRight",{"propertyChange":true},[param4[6]],param2);
         param5[9] = new PropertyWatcher("width",{"widthChanged":true},[param4[6]],null);
         param5[14].updateParent(param1);
         param5[14].addChild(param5[15]);
         param5[4].updateParent(param1);
         param5[4].addChild(param5[5]);
         param5[17].updateParent(param1);
         param5[17].addChild(param5[18]);
         param5[11].updateParent(param1);
         param5[11].addChild(param5[12]);
         param5[8].updateParent(param1);
         param5[8].addChild(param5[9]);
      }
   }
}

