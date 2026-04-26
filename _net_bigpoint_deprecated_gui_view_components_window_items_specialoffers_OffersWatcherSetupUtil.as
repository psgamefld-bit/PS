package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.window.items.specialoffers.Offers;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_window_items_specialoffers_OffersWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_window_items_specialoffers_OffersWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         Offers.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_window_items_specialoffers_OffersWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[7] = new PropertyWatcher("itemImage",{"propertyChange":true},[param4[7]],param2);
         param5[8] = new PropertyWatcher("width",{"propertyChange":true},[param4[7]],null);
         param5[7].updateParent(param1);
         param5[7].addChild(param5[8]);
      }
   }
}

