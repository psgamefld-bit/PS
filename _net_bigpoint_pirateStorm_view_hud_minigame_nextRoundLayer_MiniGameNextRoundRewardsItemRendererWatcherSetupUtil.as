package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.minigame.nextRoundLayer.MiniGameNextRoundRewardsItemRenderer;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_minigame_nextRoundLayer_MiniGameNextRoundRewardsItemRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_minigame_nextRoundLayer_MiniGameNextRoundRewardsItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MiniGameNextRoundRewardsItemRenderer.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_minigame_nextRoundLayer_MiniGameNextRoundRewardsItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[1] = new PropertyWatcher("_rewardImage",{"propertyChange":true},[param4[1]],param2);
         param5[0] = new PropertyWatcher("_toolTip",{"propertyChange":true},[param4[0]],param2);
         param5[1].updateParent(param1);
         param5[0].updateParent(param1);
      }
   }
}

