package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.common.components.skins.CustomListSkin;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_common_components_skins_CustomListSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_common_components_skins_CustomListSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CustomListSkin.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_common_components_skins_CustomListSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

