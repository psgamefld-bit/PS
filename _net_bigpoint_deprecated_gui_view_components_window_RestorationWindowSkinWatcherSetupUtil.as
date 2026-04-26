package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.window.RestorationWindowSkin;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_window_RestorationWindowSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_window_RestorationWindowSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         RestorationWindowSkin.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_window_RestorationWindowSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[8] = new PropertyWatcher("hostComponent",{"propertyChange":true},[param4[8]],param2);
         param5[9] = new PropertyWatcher("lostItemCollection",{"propertyChange":true},[param4[8]],null);
         param5[0] = new PropertyWatcher("width",{"widthChanged":true},[param4[0],param4[2],param4[3]],param2);
         param5[5] = new PropertyWatcher("picture",{"propertyChange":true},[param4[6]],param2);
         param5[6] = new PropertyWatcher("width",{"propertyChange":true},[param4[6]],null);
         param5[1] = new PropertyWatcher("height",{"heightChanged":true},[param4[1]],param2);
         param5[8].updateParent(param1);
         param5[8].addChild(param5[9]);
         param5[0].updateParent(param1);
         param5[5].updateParent(param1);
         param5[5].addChild(param5[6]);
         param5[1].updateParent(param1);
      }
   }
}

