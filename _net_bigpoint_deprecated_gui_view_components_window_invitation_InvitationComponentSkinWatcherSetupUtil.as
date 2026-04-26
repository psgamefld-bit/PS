package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.window.invitation.InvitationComponentSkin;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_window_invitation_InvitationComponentSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_window_invitation_InvitationComponentSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         InvitationComponentSkin.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_window_invitation_InvitationComponentSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

