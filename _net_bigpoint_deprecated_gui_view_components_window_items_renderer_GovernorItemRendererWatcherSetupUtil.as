package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.window.items.renderer.GovernorItemRenderer;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_window_items_renderer_GovernorItemRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_window_items_renderer_GovernorItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         GovernorItemRenderer.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_window_items_renderer_GovernorItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[6] = new PropertyWatcher("icon",{"propertyChange":true},[param4[5]],param2);
         param5[7] = new PropertyWatcher("width",{"widthChanged":true},[param4[5]],null);
         param5[12] = new PropertyWatcher("currency",{"propertyChange":true},[param4[11]],param2);
         param5[13] = new PropertyWatcher("width",{"propertyChange":true},[param4[11]],null);
         param5[6].updateParent(param1);
         param5[6].addChild(param5[7]);
         param5[12].updateParent(param1);
         param5[12].addChild(param5[13]);
      }
   }
}

