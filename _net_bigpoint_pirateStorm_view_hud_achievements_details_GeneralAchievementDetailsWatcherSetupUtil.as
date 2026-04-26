package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.achievements.details.GeneralAchievementDetails;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_achievements_details_GeneralAchievementDetailsWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_achievements_details_GeneralAchievementDetailsWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         GeneralAchievementDetails.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_achievements_details_GeneralAchievementDetailsWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[7] = new PropertyWatcher("detailIcon",{"propertyChange":true},[param4[6]],param2);
         param5[8] = new PropertyWatcher("width",{"propertyChange":true},[param4[6]],null);
         param5[7].updateParent(param1);
         param5[7].addChild(param5[8]);
      }
   }
}

