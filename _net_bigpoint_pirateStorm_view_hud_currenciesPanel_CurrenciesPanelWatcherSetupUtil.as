package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.currenciesPanel.CurrenciesPanel;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_currenciesPanel_CurrenciesPanelWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_currenciesPanel_CurrenciesPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CurrenciesPanel.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_currenciesPanel_CurrenciesPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[1] = new PropertyWatcher("panel",{"propertyChange":true},[param4[1]],param2);
         param5[2] = new PropertyWatcher("width",{"propertyChange":true},[param4[1]],null);
         param5[1].updateParent(param1);
         param5[1].addChild(param5[2]);
      }
   }
}

