package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.crafting.components.common.IconDisplay;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_crafting_components_common_IconDisplayWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_crafting_components_common_IconDisplayWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         IconDisplay.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_crafting_components_common_IconDisplayWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[5] = new PropertyWatcher("icon",{"propertyChange":true},[param4[5]],param2);
         param5[6] = new PropertyWatcher("width",{"widthChanged":true},[param4[5]],null);
         param5[5].updateParent(param1);
         param5[5].addChild(param5[6]);
      }
   }
}

