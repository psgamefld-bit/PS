package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.introScreen.IntroScreen;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_introScreen_IntroScreenWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_introScreen_IntroScreenWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         IntroScreen.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_introScreen_IntroScreenWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

