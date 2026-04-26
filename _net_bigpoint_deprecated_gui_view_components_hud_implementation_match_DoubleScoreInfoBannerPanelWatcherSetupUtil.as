package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.hud.implementation.match.DoubleScoreInfoBannerPanel;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_hud_implementation_match_DoubleScoreInfoBannerPanelWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_hud_implementation_match_DoubleScoreInfoBannerPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DoubleScoreInfoBannerPanel.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_hud_implementation_match_DoubleScoreInfoBannerPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

