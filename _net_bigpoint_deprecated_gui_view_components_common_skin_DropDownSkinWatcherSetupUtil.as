package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.common.skin.DropDownSkin;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_common_skin_DropDownSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_common_skin_DropDownSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DropDownSkin.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_common_skin_DropDownSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("borderStroke",{"propertyChange":true},[param4[0]],param2);
         param5[1] = new PropertyWatcher("color",{"propertyChange":true},[param4[0]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
      }
   }
}

