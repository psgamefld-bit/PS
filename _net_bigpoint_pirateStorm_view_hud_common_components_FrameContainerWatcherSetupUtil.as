package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.common.components.FrameContainer;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_common_components_FrameContainerWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_common_components_FrameContainerWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         FrameContainer.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_common_components_FrameContainerWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[1] = new PropertyWatcher("gap",{"propertyChange":true},[param4[1]],param2);
         param5[1].updateParent(param1);
      }
   }
}

