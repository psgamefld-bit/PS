package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.crafting.upgradePath.UpgradePathMaxedItemElement;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_crafting_upgradePath_UpgradePathMaxedItemElementWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_crafting_upgradePath_UpgradePathMaxedItemElementWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         UpgradePathMaxedItemElement.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_crafting_upgradePath_UpgradePathMaxedItemElementWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[12] = new PropertyWatcher("iconImage",{"propertyChange":true},[param4[10]],param2);
         param5[13] = new PropertyWatcher("width",{"propertyChange":true},[param4[10]],null);
         param5[3] = new PropertyWatcher("laurelImage",{"propertyChange":true},[param4[3]],param2);
         param5[4] = new PropertyWatcher("width",{"propertyChange":true},[param4[3]],null);
         param5[9] = new PropertyWatcher("ringImage",{"propertyChange":true},[param4[8]],param2);
         param5[10] = new PropertyWatcher("width",{"propertyChange":true},[param4[8]],null);
         param5[6] = new PropertyWatcher("bgImage",{"propertyChange":true},[param4[5]],param2);
         param5[7] = new PropertyWatcher("width",{"propertyChange":true},[param4[5]],null);
         param5[12].updateParent(param1);
         param5[12].addChild(param5[13]);
         param5[3].updateParent(param1);
         param5[3].addChild(param5[4]);
         param5[9].updateParent(param1);
         param5[9].addChild(param5[10]);
         param5[6].updateParent(param1);
         param5[6].addChild(param5[7]);
      }
   }
}

