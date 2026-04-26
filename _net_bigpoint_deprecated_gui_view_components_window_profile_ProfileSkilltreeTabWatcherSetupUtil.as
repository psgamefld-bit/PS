package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.window.profile.ProfileSkilltreeTab;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_window_profile_ProfileSkilltreeTabWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_window_profile_ProfileSkilltreeTabWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ProfileSkilltreeTab.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_window_profile_ProfileSkilltreeTabWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[1] = new PropertyWatcher("sealLabel",{"propertyChange":true},[param4[1]],param2);
         param5[2] = new PropertyWatcher("x",{"xChanged":true},[param4[1]],null);
         param5[3] = new PropertyWatcher("width",{"widthChanged":true},[param4[1]],null);
         param5[1].updateParent(param1);
         param5[1].addChild(param5[2]);
         param5[1].addChild(param5[3]);
      }
   }
}

