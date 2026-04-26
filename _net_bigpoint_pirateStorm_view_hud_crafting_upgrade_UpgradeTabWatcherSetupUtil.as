package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.crafting.upgrade.UpgradeTab;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_crafting_upgrade_UpgradeTabWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_crafting_upgrade_UpgradeTabWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         UpgradeTab.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_crafting_upgrade_UpgradeTabWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

