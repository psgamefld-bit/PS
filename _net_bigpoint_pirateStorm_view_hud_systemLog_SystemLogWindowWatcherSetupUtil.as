package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.systemLog.SystemLogWindow;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_systemLog_SystemLogWindowWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_systemLog_SystemLogWindowWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SystemLogWindow.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_systemLog_SystemLogWindowWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("systemLogScroller",{"propertyChange":true},[param4[2],param4[3]],param2);
         param5[3] = new PropertyWatcher("width",{"widthChanged":true},[param4[2]],null);
         param5[4] = new PropertyWatcher("height",{"heightChanged":true},[param4[3]],null);
         param5[0] = new PropertyWatcher("width",{"widthChanged":true},[param4[0]],param2);
         param5[1] = new PropertyWatcher("height",{"heightChanged":true},[param4[1]],param2);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
         param5[2].addChild(param5[4]);
         param5[0].updateParent(param1);
         param5[1].updateParent(param1);
      }
   }
}

