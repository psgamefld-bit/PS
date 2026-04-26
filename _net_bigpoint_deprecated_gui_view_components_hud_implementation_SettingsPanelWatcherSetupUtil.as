package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.hud.implementation.SettingsPanel;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_hud_implementation_SettingsPanelWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_hud_implementation_SettingsPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SettingsPanel.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_hud_implementation_SettingsPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("monsterHuntNoticePanel",{"propertyChange":true},[param4[2]],param2);
         param5[3] = new PropertyWatcher("width",{"widthChanged":true},[param4[2]],null);
         param5[0] = new PropertyWatcher("monsterHuntButton",{"propertyChange":true},[param4[2]],param2);
         param5[1] = new PropertyWatcher("x",{"xChanged":true},[param4[2]],null);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
      }
   }
}

