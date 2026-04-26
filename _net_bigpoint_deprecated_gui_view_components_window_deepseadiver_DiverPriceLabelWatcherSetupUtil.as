package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.window.deepseadiver.DiverPriceLabel;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_window_deepseadiver_DiverPriceLabelWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_window_deepseadiver_DiverPriceLabelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DiverPriceLabel.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_window_deepseadiver_DiverPriceLabelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

