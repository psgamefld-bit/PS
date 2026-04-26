package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.window.guild.GuildRegistryErrorItem;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_window_guild_GuildRegistryErrorItemWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_window_guild_GuildRegistryErrorItemWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         GuildRegistryErrorItem.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_window_guild_GuildRegistryErrorItemWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[4] = new PropertyWatcher("errorIcon",{"propertyChange":true},[param4[4]],param2);
         param5[5] = new PropertyWatcher("width",{"propertyChange":true},[param4[4]],null);
         param5[4].updateParent(param1);
         param5[4].addChild(param5[5]);
      }
   }
}

