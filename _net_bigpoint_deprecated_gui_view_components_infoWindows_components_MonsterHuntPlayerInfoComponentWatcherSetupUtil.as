package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.infoWindows.components.MonsterHuntPlayerInfoComponent;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_infoWindows_components_MonsterHuntPlayerInfoComponentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_infoWindows_components_MonsterHuntPlayerInfoComponentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MonsterHuntPlayerInfoComponent.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_infoWindows_components_MonsterHuntPlayerInfoComponentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[3] = new PropertyWatcher("icon",{"propertyChange":true},[param4[3]],param2);
         param5[4] = new PropertyWatcher("width",{"widthChanged":true},[param4[3]],null);
         param5[3].updateParent(param1);
         param5[3].addChild(param5[4]);
      }
   }
}

