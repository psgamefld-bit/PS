package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.crafting.upgradePath.UpgradePathTab;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_crafting_upgradePath_UpgradePathTabWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_crafting_upgradePath_UpgradePathTabWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         UpgradePathTab.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_crafting_upgradePath_UpgradePathTabWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

