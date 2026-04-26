package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.tutorial.window.Tutorial2TextWindow;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_tutorial_window_Tutorial2TextWindowWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_tutorial_window_Tutorial2TextWindowWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         Tutorial2TextWindow.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_tutorial_window_Tutorial2TextWindowWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

