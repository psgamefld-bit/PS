package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.hud.buttons.SwitchLoadoutGameButtonSkin;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_hud_buttons_SwitchLoadoutGameButtonSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_hud_buttons_SwitchLoadoutGameButtonSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SwitchLoadoutGameButtonSkin.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_hud_buttons_SwitchLoadoutGameButtonSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

