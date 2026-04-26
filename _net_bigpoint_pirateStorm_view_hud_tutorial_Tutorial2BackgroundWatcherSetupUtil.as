package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.tutorial.Tutorial2Background;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_tutorial_Tutorial2BackgroundWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_tutorial_Tutorial2BackgroundWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         Tutorial2Background.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_tutorial_Tutorial2BackgroundWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

