package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.minigame.drawLayer.MiniGameDrawLayer;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_minigame_drawLayer_MiniGameDrawLayerWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_minigame_drawLayer_MiniGameDrawLayerWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MiniGameDrawLayer.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_minigame_drawLayer_MiniGameDrawLayerWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

