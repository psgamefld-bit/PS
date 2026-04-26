package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.window.guild.container.GuildIslandBuyContainer;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_window_guild_container_GuildIslandBuyContainerWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_window_guild_container_GuildIslandBuyContainerWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         GuildIslandBuyContainer.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_window_guild_container_GuildIslandBuyContainerWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

