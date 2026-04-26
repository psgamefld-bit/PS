package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.tabbedMessageArea.skins.scrollers.PiratesSmallVScrollBarThumbSkin;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_tabbedMessageArea_skins_scrollers_PiratesSmallVScrollBarThumbSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_tabbedMessageArea_skins_scrollers_PiratesSmallVScrollBarThumbSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PiratesSmallVScrollBarThumbSkin.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_tabbedMessageArea_skins_scrollers_PiratesSmallVScrollBarThumbSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

