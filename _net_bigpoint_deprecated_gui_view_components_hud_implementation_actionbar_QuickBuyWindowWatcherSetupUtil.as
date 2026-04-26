package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.hud.implementation.actionbar.QuickBuyWindow;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_hud_implementation_actionbar_QuickBuyWindowWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_hud_implementation_actionbar_QuickBuyWindowWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         QuickBuyWindow.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_hud_implementation_actionbar_QuickBuyWindowWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("width",{"widthChanged":true},[param4[2],param4[4]],param2);
         param5[3] = new PropertyWatcher("height",{"heightChanged":true},[param4[3]],param2);
         param5[2].updateParent(param1);
         param5[3].updateParent(param1);
      }
   }
}

