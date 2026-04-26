package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.harbour.Harbour;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_harbour_HarbourWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_harbour_HarbourWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         Harbour.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_harbour_HarbourWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("harbourImage",{"propertyChange":true},[param4[1]],param2);
         param5[3] = new PropertyWatcher("width",{"propertyChange":true},[param4[1]],null);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
      }
   }
}

