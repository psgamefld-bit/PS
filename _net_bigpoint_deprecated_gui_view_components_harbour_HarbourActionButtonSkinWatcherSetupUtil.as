package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.harbour.HarbourActionButtonSkin;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_harbour_HarbourActionButtonSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_harbour_HarbourActionButtonSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         HarbourActionButtonSkin.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_harbour_HarbourActionButtonSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[1] = new PropertyWatcher("hostComponent",{"propertyChange":true},[param4[6]],param2);
         param5[2] = new PropertyWatcher("image",{"propertyChange":true},[param4[6]],null);
         param5[5] = new PropertyWatcher("icon",{"propertyChange":true},[param4[8]],param2);
         param5[6] = new PropertyWatcher("width",{"propertyChange":true},[param4[8]],null);
         param5[1].updateParent(param1);
         param5[1].addChild(param5[2]);
         param5[5].updateParent(param1);
         param5[5].addChild(param5[6]);
      }
   }
}

