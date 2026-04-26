package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.window.arena.screens.detailTab.skins.DetailTabDataGridSkin;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_window_arena_screens_detailTab_skins_DetailTabDataGridSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_window_arena_screens_detailTab_skins_DetailTabDataGridSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DetailTabDataGridSkin.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_window_arena_screens_detailTab_skins_DetailTabDataGridSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("headerColumnSeparator",{"propertyChange":true},[param4[0]],param2);
         param5[1] = new PropertyWatcher("headerRenderer",{"propertyChange":true},[param4[1]],param2);
         param5[0].updateParent(param1);
         param5[1].updateParent(param1);
      }
   }
}

