package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.crafting.components.toolTips.components.AlignedStatsItemRenderer;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_crafting_components_toolTips_components_AlignedStatsItemRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_crafting_components_toolTips_components_AlignedStatsItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         AlignedStatsItemRenderer.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_crafting_components_toolTips_components_AlignedStatsItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[1] = new PropertyWatcher("statVO",{"propertyChange":true},[param4[2],param4[9],param4[10]],param2);
         param5[10] = new PropertyWatcher("color",null,[param4[10]],null);
         param5[2] = new PropertyWatcher("name",null,[param4[2]],null);
         param5[9] = new PropertyWatcher("value",null,[param4[9]],null);
         param5[1].updateParent(param1);
         param5[1].addChild(param5[10]);
         param5[1].addChild(param5[2]);
         param5[1].addChild(param5[9]);
      }
   }
}

