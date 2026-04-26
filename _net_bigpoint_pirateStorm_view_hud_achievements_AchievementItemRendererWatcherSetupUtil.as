package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.achievements.AchievementItemRenderer;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_achievements_AchievementItemRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_achievements_AchievementItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         AchievementItemRenderer.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_achievements_AchievementItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[12] = new PropertyWatcher("achievementSuccessIcon",{"propertyChange":true},[param4[16]],param2);
         param5[13] = new PropertyWatcher("width",{"propertyChange":true},[param4[16]],null);
         param5[6] = new PropertyWatcher("icon",{"propertyChange":true},[param4[6]],param2);
         param5[7] = new PropertyWatcher("width",{"widthChanged":true},[param4[6]],null);
         param5[12].updateParent(param1);
         param5[12].addChild(param5[13]);
         param5[6].updateParent(param1);
         param5[6].addChild(param5[7]);
      }
   }
}

