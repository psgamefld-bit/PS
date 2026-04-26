package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.minigame.eventLayer.MiniGameRewardsItemRenderer;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_minigame_eventLayer_MiniGameRewardsItemRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_minigame_eventLayer_MiniGameRewardsItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MiniGameRewardsItemRenderer.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_minigame_eventLayer_MiniGameRewardsItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[1] = new PropertyWatcher("_rewardIconFrame",{"propertyChange":true},[param4[1]],param2);
         param5[4] = new PropertyWatcher("colorFilter",{"propertyChange":true},[param4[4]],param2);
         param5[0] = new PropertyWatcher("_rewardSpotLight",{"propertyChange":true},[param4[0]],param2);
         param5[3] = new PropertyWatcher("_rewardImage",{"propertyChange":true},[param4[3],param4[5],param4[6]],param2);
         param5[2] = new PropertyWatcher("_toolTip",{"propertyChange":true},[param4[2]],param2);
         param5[1].updateParent(param1);
         param5[4].updateParent(param1);
         param5[0].updateParent(param1);
         param5[3].updateParent(param1);
         param5[2].updateParent(param1);
      }
   }
}

