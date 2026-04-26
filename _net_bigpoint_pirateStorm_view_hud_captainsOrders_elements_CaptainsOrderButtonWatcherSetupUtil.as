package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.captainsOrders.elements.CaptainsOrderButton;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_captainsOrders_elements_CaptainsOrderButtonWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_captainsOrders_elements_CaptainsOrderButtonWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CaptainsOrderButton.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_captainsOrders_elements_CaptainsOrderButtonWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

