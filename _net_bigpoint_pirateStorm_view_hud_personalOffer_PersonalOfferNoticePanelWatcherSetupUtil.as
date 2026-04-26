package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.personalOffer.PersonalOfferNoticePanel;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_personalOffer_PersonalOfferNoticePanelWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_personalOffer_PersonalOfferNoticePanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PersonalOfferNoticePanel.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_personalOffer_PersonalOfferNoticePanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

