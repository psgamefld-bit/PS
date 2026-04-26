package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.minigame.gameFinish.MiniGameFinishedLayer;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_minigame_gameFinish_MiniGameFinishedLayerWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_minigame_gameFinish_MiniGameFinishedLayerWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MiniGameFinishedLayer.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_minigame_gameFinish_MiniGameFinishedLayerWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[3] = new PropertyWatcher("_activeRewards",{"propertyChange":true},[param4[3]],param2);
         param5[3].updateParent(param1);
      }
   }
}

