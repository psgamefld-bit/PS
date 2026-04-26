package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.common.windows.components.skins.TopNavigationSkinInnerClass0;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_common_windows_components_skins_TopNavigationSkinInnerClass0WatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_common_windows_components_skins_TopNavigationSkinInnerClass0WatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TopNavigationSkinInnerClass0.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_common_windows_components_skins_TopNavigationSkinInnerClass0WatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("data",{"dataChange":true},[param4[0]],param2);
         param5[1] = new PropertyWatcher("toolTip",null,[param4[0]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
      }
   }
}

