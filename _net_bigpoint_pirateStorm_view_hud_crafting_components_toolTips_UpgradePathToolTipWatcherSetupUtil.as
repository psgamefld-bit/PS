package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.crafting.components.toolTips.UpgradePathToolTip;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_crafting_components_toolTips_UpgradePathToolTipWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_crafting_components_toolTips_UpgradePathToolTipWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         UpgradePathToolTip.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_crafting_components_toolTips_UpgradePathToolTipWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

