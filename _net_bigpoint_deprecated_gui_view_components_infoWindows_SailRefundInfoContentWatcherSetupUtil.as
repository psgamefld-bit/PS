package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.infoWindows.SailRefundInfoContent;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_infoWindows_SailRefundInfoContentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_infoWindows_SailRefundInfoContentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SailRefundInfoContent.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_infoWindows_SailRefundInfoContentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[8] = new PropertyWatcher("compensationMessageGroup",{"propertyChange":true},[param4[8]],param2);
         param5[9] = new PropertyWatcher("y",{"yChanged":true},[param4[8]],null);
         param5[10] = new PropertyWatcher("height",{"heightChanged":true},[param4[8]],null);
         param5[4] = new PropertyWatcher("inventoryMessageGroup",{"propertyChange":true},[param4[4]],param2);
         param5[5] = new PropertyWatcher("y",{"yChanged":true},[param4[4]],null);
         param5[6] = new PropertyWatcher("height",{"heightChanged":true},[param4[4]],null);
         param5[8].updateParent(param1);
         param5[8].addChild(param5[9]);
         param5[8].addChild(param5[10]);
         param5[4].updateParent(param1);
         param5[4].addChild(param5[5]);
         param5[4].addChild(param5[6]);
      }
   }
}

