package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.window.HudWindowSkin;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_window_HudWindowSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_window_HudWindowSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         HudWindowSkin.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_window_HudWindowSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[1] = new PropertyWatcher("hostComponent",{"propertyChange":true},[param4[1],param4[4],param4[7],param4[9]],param2);
         param5[2] = new PropertyWatcher("width",{"widthChanged":true},[param4[1],param4[9]],null);
         param5[5] = new PropertyWatcher("height",{"heightChanged":true},[param4[4],param4[7]],null);
         param5[1].updateParent(param1);
         param5[1].addChild(param5[2]);
         param5[1].addChild(param5[5]);
      }
   }
}

