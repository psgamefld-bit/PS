package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.window.RestorationItem;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_window_RestorationItemWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_window_RestorationItemWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         RestorationItem.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_window_RestorationItemWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("icon",{"propertyChange":true},[param4[1]],param2);
         param5[3] = new PropertyWatcher("width",{"widthChanged":true},[param4[1]],null);
         param5[5] = new PropertyWatcher("currency",{"propertyChange":true},[param4[3]],param2);
         param5[6] = new PropertyWatcher("width",{"propertyChange":true},[param4[3]],null);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
         param5[5].updateParent(param1);
         param5[5].addChild(param5[6]);
      }
   }
}

