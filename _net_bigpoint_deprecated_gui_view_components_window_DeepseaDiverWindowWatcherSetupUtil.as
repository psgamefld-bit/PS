package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.window.DeepseaDiverWindow;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_window_DeepseaDiverWindowWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_window_DeepseaDiverWindowWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DeepseaDiverWindow.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_window_DeepseaDiverWindowWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[4] = new PropertyWatcher("width",{"widthChanged":true},[param4[3],param4[5]],param2);
         param5[2] = new PropertyWatcher("glowImage",{"propertyChange":true},[param4[2]],param2);
         param5[3] = new PropertyWatcher("width",{"propertyChange":true},[param4[2]],null);
         param5[5] = new PropertyWatcher("height",{"heightChanged":true},[param4[4]],param2);
         param5[4].updateParent(param1);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
         param5[5].updateParent(param1);
      }
   }
}

