package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.captainsOrders.CaptainsOrdersTab;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_captainsOrders_CaptainsOrdersTabWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_captainsOrders_CaptainsOrdersTabWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CaptainsOrdersTab.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_captainsOrders_CaptainsOrdersTabWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

