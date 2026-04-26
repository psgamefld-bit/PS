package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.hud.implementation.GuildIslandAggressionCooldownPanel;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_hud_implementation_GuildIslandAggressionCooldownPanelWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_hud_implementation_GuildIslandAggressionCooldownPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         GuildIslandAggressionCooldownPanel.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_hud_implementation_GuildIslandAggressionCooldownPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

