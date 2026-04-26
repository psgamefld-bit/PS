package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.minigame.nextRoundLayer.MiniGameNextRoundLayer;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_minigame_nextRoundLayer_MiniGameNextRoundLayerWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_minigame_nextRoundLayer_MiniGameNextRoundLayerWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MiniGameNextRoundLayer.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_minigame_nextRoundLayer_MiniGameNextRoundLayerWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[5] = new PropertyWatcher("_activeRewards",{"propertyChange":true},[param4[5]],param2);
         param5[6] = new PropertyWatcher("_toolTip",{"propertyChange":true},[param4[6]],param2);
         param5[5].updateParent(param1);
         param5[6].updateParent(param1);
      }
   }
}

