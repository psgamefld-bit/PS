package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.crafting.components.toolTips.components.IconRightAlignedStatsItemRenderer;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_crafting_components_toolTips_components_IconRightAlignedStatsItemRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_crafting_components_toolTips_components_IconRightAlignedStatsItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         IconRightAlignedStatsItemRenderer.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_crafting_components_toolTips_components_IconRightAlignedStatsItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[1] = new PropertyWatcher("statVO",{"propertyChange":true},[param4[1],param4[9],param4[10]],param2);
         param5[9] = new PropertyWatcher("color",null,[param4[10]],null);
         param5[2] = new PropertyWatcher("name",null,[param4[1]],null);
         param5[8] = new PropertyWatcher("value",null,[param4[9]],null);
         param5[1].updateParent(param1);
         param5[1].addChild(param5[9]);
         param5[1].addChild(param5[2]);
         param5[1].addChild(param5[8]);
      }
   }
}

