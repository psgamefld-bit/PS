package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.tabbedMessageArea.skins.TabbedMessageAreaWindowSkin;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_tabbedMessageArea_skins_TabbedMessageAreaWindowSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_tabbedMessageArea_skins_TabbedMessageAreaWindowSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TabbedMessageAreaWindowSkin.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_tabbedMessageArea_skins_TabbedMessageAreaWindowSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("backgroundImage",{"propertyChange":true},[param4[1]],param2);
         param5[3] = new PropertyWatcher("width",{"propertyChange":true},[param4[1]],null);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
      }
   }
}

