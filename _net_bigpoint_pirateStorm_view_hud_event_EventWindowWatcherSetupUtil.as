package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.event.EventWindow;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_event_EventWindowWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_event_EventWindowWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         EventWindow.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_event_EventWindowWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[13] = new PropertyWatcher("bg",{"propertyChange":true},[param4[15]],param2);
         param5[14] = new PropertyWatcher("y",{"yChanged":true},[param4[15]],null);
         param5[15] = new PropertyWatcher("height",{"heightChanged":true},[param4[15]],null);
         param5[10] = new PropertyWatcher("banner",{"propertyChange":true},[param4[13]],param2);
         param5[11] = new PropertyWatcher("width",{"propertyChange":true},[param4[13]],null);
         param5[16] = new PropertyWatcher("detailContainer",{"propertyChange":true},[param4[15],param4[20]],param2);
         param5[17] = new PropertyWatcher("y",{"yChanged":true},[param4[15]],null);
         param5[19] = new PropertyWatcher("height",{"heightChanged":true},[param4[20]],null);
         param5[13].updateParent(param1);
         param5[13].addChild(param5[14]);
         param5[13].addChild(param5[15]);
         param5[10].updateParent(param1);
         param5[10].addChild(param5[11]);
         param5[16].updateParent(param1);
         param5[16].addChild(param5[17]);
         param5[16].addChild(param5[19]);
      }
   }
}

