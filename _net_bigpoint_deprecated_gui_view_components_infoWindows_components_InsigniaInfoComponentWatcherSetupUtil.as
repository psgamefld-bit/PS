package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.infoWindows.components.InsigniaInfoComponent;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_infoWindows_components_InsigniaInfoComponentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_infoWindows_components_InsigniaInfoComponentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         InsigniaInfoComponent.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_infoWindows_components_InsigniaInfoComponentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("icon",{"propertyChange":true},[param4[1]],param2);
         param5[3] = new PropertyWatcher("width",{"widthChanged":true},[param4[1]],null);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
      }
   }
}

