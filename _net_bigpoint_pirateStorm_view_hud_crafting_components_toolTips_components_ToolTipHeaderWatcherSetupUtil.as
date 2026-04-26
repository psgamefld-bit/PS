package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.crafting.components.toolTips.components.ToolTipHeader;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_crafting_components_toolTips_components_ToolTipHeaderWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_crafting_components_toolTips_components_ToolTipHeaderWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ToolTipHeader.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_crafting_components_toolTips_components_ToolTipHeaderWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

