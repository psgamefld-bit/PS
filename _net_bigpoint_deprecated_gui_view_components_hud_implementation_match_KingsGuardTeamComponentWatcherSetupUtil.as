package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.hud.implementation.match.KingsGuardTeamComponent;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_hud_implementation_match_KingsGuardTeamComponentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_hud_implementation_match_KingsGuardTeamComponentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         KingsGuardTeamComponent.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_hud_implementation_match_KingsGuardTeamComponentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[10] = new PropertyWatcher("avatarImage",{"propertyChange":true},[param4[7]],param2);
         param5[11] = new PropertyWatcher("width",{"propertyChange":true},[param4[7]],null);
         param5[1] = new PropertyWatcher("healthBG",{"propertyChange":true},[param4[0]],param2);
         param5[2] = new PropertyWatcher("width",{"propertyChange":true},[param4[0]],null);
         param5[7] = new PropertyWatcher("avatarBgImage",{"propertyChange":true},[param4[5]],param2);
         param5[8] = new PropertyWatcher("width",{"propertyChange":true},[param4[5]],null);
         param5[10].updateParent(param1);
         param5[10].addChild(param5[11]);
         param5[1].updateParent(param1);
         param5[1].addChild(param5[2]);
         param5[7].updateParent(param1);
         param5[7].addChild(param5[8]);
      }
   }
}

