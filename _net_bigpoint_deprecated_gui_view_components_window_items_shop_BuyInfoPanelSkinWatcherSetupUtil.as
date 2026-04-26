package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.window.items.shop.BuyInfoPanelSkin;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_window_items_shop_BuyInfoPanelSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_window_items_shop_BuyInfoPanelSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         BuyInfoPanelSkin.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_window_items_shop_BuyInfoPanelSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[5] = new PropertyWatcher("icon",{"propertyChange":true},[param4[5]],param2);
         param5[6] = new PropertyWatcher("width",{"widthChanged":true},[param4[5]],null);
         param5[5].updateParent(param1);
         param5[5].addChild(param5[6]);
      }
   }
}

