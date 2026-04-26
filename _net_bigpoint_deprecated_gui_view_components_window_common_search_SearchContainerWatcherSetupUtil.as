package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.window.common.search.SearchContainer;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_window_common_search_SearchContainerWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_window_common_search_SearchContainerWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SearchContainer.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_window_common_search_SearchContainerWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("searchButton",{"propertyChange":true},[param4[1]],param2);
         param5[3] = new PropertyWatcher("width",{"widthChanged":true},[param4[1]],null);
         param5[0] = new PropertyWatcher("selectGroup",{"propertyChange":true},[param4[0],param4[1]],param2);
         param5[1] = new PropertyWatcher("width",{"widthChanged":true},[param4[0],param4[1]],null);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
      }
   }
}

