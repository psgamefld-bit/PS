package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.HudScreen;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_HudScreenWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_HudScreenWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         HudScreen.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_HudScreenWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("hudInterface",{"propertyChange":true},[param4[2]],param2);
         param5[3] = new PropertyWatcher("height",{"heightChanged":true},[param4[2]],null);
         param5[4] = new PropertyWatcher("height",{"heightChanged":true},[param4[3]],param2);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
         param5[4].updateParent(param1);
      }
   }
}

