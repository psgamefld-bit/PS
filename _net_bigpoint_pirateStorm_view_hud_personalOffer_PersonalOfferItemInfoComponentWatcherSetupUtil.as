package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.personalOffer.PersonalOfferItemInfoComponent;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_personalOffer_PersonalOfferItemInfoComponentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_personalOffer_PersonalOfferItemInfoComponentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PersonalOfferItemInfoComponent.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_personalOffer_PersonalOfferItemInfoComponentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[3] = new PropertyWatcher("icon",{"propertyChange":true},[param4[2]],param2);
         param5[4] = new PropertyWatcher("width",{"widthChanged":true},[param4[2]],null);
         param5[3].updateParent(param1);
         param5[3].addChild(param5[4]);
      }
   }
}

