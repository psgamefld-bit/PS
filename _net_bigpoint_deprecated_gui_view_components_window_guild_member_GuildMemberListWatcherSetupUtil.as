package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.window.guild.member.GuildMemberList;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_window_guild_member_GuildMemberListWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_window_guild_member_GuildMemberListWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         GuildMemberList.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_window_guild_member_GuildMemberListWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

