package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.hud.buttons.CheckboxButtonSkin;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_hud_buttons_CheckboxButtonSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_hud_buttons_CheckboxButtonSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CheckboxButtonSkin.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_hud_buttons_CheckboxButtonSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("tick",{"propertyChange":true},[param4[5]],param2);
         param5[3] = new PropertyWatcher("width",{"propertyChange":true},[param4[5]],null);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
      }
   }
}

