package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.hud.buttons.RoundedPanelButton;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_hud_buttons_RoundedPanelButtonWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_hud_buttons_RoundedPanelButtonWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         RoundedPanelButton.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_hud_buttons_RoundedPanelButtonWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[1] = new PropertyWatcher("panel",{"propertyChange":true},[param4[1]],param2);
         param5[2] = new PropertyWatcher("width",{"propertyChange":true},[param4[1]],null);
         param5[6] = new PropertyWatcher("panelInfo",{"propertyChange":true},[param4[3]],param2);
         param5[7] = new PropertyWatcher("width",{"widthChanged":true},[param4[3]],null);
         param5[1].updateParent(param1);
         param5[1].addChild(param5[2]);
         param5[6].updateParent(param1);
         param5[6].addChild(param5[7]);
      }
   }
}

