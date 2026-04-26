package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.window.guild.ActionCondition;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_window_guild_ActionConditionWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_window_guild_ActionConditionWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ActionCondition.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_window_guild_ActionConditionWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[3] = new PropertyWatcher("fulfilledIcon",{"propertyChange":true},[param4[2]],param2);
         param5[4] = new PropertyWatcher("width",{"propertyChange":true},[param4[2]],null);
         param5[6] = new PropertyWatcher("conditionIcon",{"propertyChange":true},[param4[4]],param2);
         param5[7] = new PropertyWatcher("width",{"propertyChange":true},[param4[4]],null);
         param5[3].updateParent(param1);
         param5[3].addChild(param5[4]);
         param5[6].updateParent(param1);
         param5[6].addChild(param5[7]);
      }
   }
}

