package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.common.components.skins.alternativeScroller.VScrollBarInvertedTrackSkin;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_common_components_skins_alternativeScroller_VScrollBarInvertedTrackSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_common_components_skins_alternativeScroller_VScrollBarInvertedTrackSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         VScrollBarInvertedTrackSkin.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_common_components_skins_alternativeScroller_VScrollBarInvertedTrackSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

