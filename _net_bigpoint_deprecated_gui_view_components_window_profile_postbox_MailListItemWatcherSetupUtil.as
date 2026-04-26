package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.window.profile.postbox.MailListItem;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_window_profile_postbox_MailListItemWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_window_profile_postbox_MailListItemWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MailListItem.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_window_profile_postbox_MailListItemWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[1] = new PropertyWatcher("contentArea",{"propertyChange":true},[param4[1]],param2);
         param5[2] = new PropertyWatcher("y",{"yChanged":true},[param4[1]],null);
         param5[3] = new PropertyWatcher("height",{"heightChanged":true},[param4[1]],null);
         param5[1].updateParent(param1);
         param5[1].addChild(param5[2]);
         param5[1].addChild(param5[3]);
      }
   }
}

