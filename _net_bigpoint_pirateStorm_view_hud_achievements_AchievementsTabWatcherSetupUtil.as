package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.achievements.AchievementsTab;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_achievements_AchievementsTabWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_achievements_AchievementsTabWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         AchievementsTab.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_achievements_AchievementsTabWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

