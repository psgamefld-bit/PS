package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.common.components.CurrencyGroup;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_common_components_CurrencyGroupWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_common_components_CurrencyGroupWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CurrencyGroup.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_common_components_CurrencyGroupWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

