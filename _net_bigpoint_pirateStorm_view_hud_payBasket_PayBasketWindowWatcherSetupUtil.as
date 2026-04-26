package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.payBasket.PayBasketWindow;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_payBasket_PayBasketWindowWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_payBasket_PayBasketWindowWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PayBasketWindow.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_payBasket_PayBasketWindowWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[4] = new PropertyWatcher("rightSeal",{"propertyChange":true},[param4[3]],param2);
         param5[5] = new PropertyWatcher("width",{"propertyChange":true},[param4[3]],null);
         param5[13] = new PropertyWatcher("topLeftSeal",{"propertyChange":true},[param4[9]],param2);
         param5[14] = new PropertyWatcher("width",{"propertyChange":true},[param4[9]],null);
         param5[22] = new PropertyWatcher("iconGroup",{"propertyChange":true},[param4[17]],param2);
         param5[23] = new PropertyWatcher("width",{"widthChanged":true},[param4[17]],null);
         param5[10] = new PropertyWatcher("middleLeftSeal",{"propertyChange":true},[param4[7]],param2);
         param5[11] = new PropertyWatcher("width",{"propertyChange":true},[param4[7]],null);
         param5[7] = new PropertyWatcher("lowerLeftSeal",{"propertyChange":true},[param4[5]],param2);
         param5[8] = new PropertyWatcher("width",{"propertyChange":true},[param4[5]],null);
         param5[16] = new PropertyWatcher("closeButton",{"propertyChange":true},[param4[11]],param2);
         param5[17] = new PropertyWatcher("width",{"widthChanged":true},[param4[11]],null);
         param5[4].updateParent(param1);
         param5[4].addChild(param5[5]);
         param5[13].updateParent(param1);
         param5[13].addChild(param5[14]);
         param5[22].updateParent(param1);
         param5[22].addChild(param5[23]);
         param5[10].updateParent(param1);
         param5[10].addChild(param5[11]);
         param5[7].updateParent(param1);
         param5[7].addChild(param5[8]);
         param5[16].updateParent(param1);
         param5[16].addChild(param5[17]);
      }
   }
}

