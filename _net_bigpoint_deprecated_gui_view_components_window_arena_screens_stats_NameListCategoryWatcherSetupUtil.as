package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.window.arena.screens.stats.NameListCategory;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_window_arena_screens_stats_NameListCategoryWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_window_arena_screens_stats_NameListCategoryWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         NameListCategory.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_window_arena_screens_stats_NameListCategoryWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

