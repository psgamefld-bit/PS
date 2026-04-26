package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.minigame.eventLayer.MiniGameEventLayer;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_minigame_eventLayer_MiniGameEventLayerWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_minigame_eventLayer_MiniGameEventLayerWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MiniGameEventLayer.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_minigame_eventLayer_MiniGameEventLayerWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[6] = new PropertyWatcher("_pastRewards",{"propertyChange":true},[param4[9]],param2);
         param5[0] = new PropertyWatcher("rewardsFrameArrow",{"propertyChange":true},[param4[0],param4[1],param4[2]],param2);
         param5[6].updateParent(param1);
         param5[0].updateParent(param1);
      }
   }
}

