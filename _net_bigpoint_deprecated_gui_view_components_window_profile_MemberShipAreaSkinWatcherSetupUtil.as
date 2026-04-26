package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.window.profile.MemberShipAreaSkin;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_window_profile_MemberShipAreaSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_window_profile_MemberShipAreaSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MemberShipAreaSkin.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_window_profile_MemberShipAreaSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("filter",{"propertyChange":true},[param4[1]],param2);
         param5[0].updateParent(param1);
      }
   }
}

