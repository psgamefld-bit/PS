package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.tabbedMessageArea.TabbedMessageAreaWindow;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_tabbedMessageArea_TabbedMessageAreaWindowWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_tabbedMessageArea_TabbedMessageAreaWindowWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TabbedMessageAreaWindow.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_tabbedMessageArea_TabbedMessageAreaWindowWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[7] = new PropertyWatcher("chatBar",{"propertyChange":true},[param4[14],param4[17]],param2);
         param5[8] = new PropertyWatcher("resizeButtonSkin",{"propertyChange":true},[param4[15]],param2);
         param5[7].updateParent(param1);
         param5[8].updateParent(param1);
      }
   }
}

