package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.window.arena.screens.RoleSelection;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_window_arena_screens_RoleSelectionWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_window_arena_screens_RoleSelectionWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         RoleSelection.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_window_arena_screens_RoleSelectionWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[24] = new PropertyWatcher("topMiddleBg",{"propertyChange":true},[param4[27]],param2);
         param5[25] = new PropertyWatcher("x",{"propertyChange":true},[param4[27]],null);
         param5[32] = new PropertyWatcher("guardTopRight",{"propertyChange":true},[param4[43],param4[47],param4[80]],param2);
         param5[33] = new PropertyWatcher("width",{"propertyChange":true},[param4[43],param4[47],param4[80]],null);
         param5[35] = new PropertyWatcher("guardTopMiddle",{"propertyChange":true},[param4[48],param4[55],param4[56],param4[88],param4[89]],param2);
         param5[36] = new PropertyWatcher("x",{"propertyChange":true},[param4[48],param4[55],param4[56],param4[88],param4[89]],null);
         param5[46] = new PropertyWatcher("kingTopRight",{"propertyChange":true},[param4[76]],param2);
         param5[47] = new PropertyWatcher("width",{"propertyChange":true},[param4[76]],null);
         param5[30] = new PropertyWatcher("guardTopLeft",{"propertyChange":true},[param4[41],param4[42]],param2);
         param5[31] = new PropertyWatcher("width",{"propertyChange":true},[param4[41],param4[42]],null);
         param5[21] = new PropertyWatcher("topRightBg",{"propertyChange":true},[param4[22],param4[26]],param2);
         param5[22] = new PropertyWatcher("width",{"propertyChange":true},[param4[22],param4[26]],null);
         param5[53] = new PropertyWatcher("kingImage",{"propertyChange":true},[param4[100]],param2);
         param5[54] = new PropertyWatcher("width",{"propertyChange":true},[param4[100]],null);
         param5[37] = new PropertyWatcher("guardTopGroup",{"propertyChange":true},[param4[54],param4[87]],param2);
         param5[38] = new PropertyWatcher("height",{"heightChanged":true},[param4[54],param4[87]],null);
         param5[44] = new PropertyWatcher("kingTopLeft",{"propertyChange":true},[param4[74],param4[75]],param2);
         param5[45] = new PropertyWatcher("width",{"propertyChange":true},[param4[74],param4[75]],null);
         param5[56] = new PropertyWatcher("ornamentLeftImage",{"propertyChange":true},[param4[103],param4[105]],param2);
         param5[57] = new PropertyWatcher("width",{"propertyChange":true},[param4[103],param4[105]],null);
         param5[49] = new PropertyWatcher("kingTopMiddle",{"propertyChange":true},[param4[81]],param2);
         param5[50] = new PropertyWatcher("x",{"propertyChange":true},[param4[81]],null);
         param5[16] = new PropertyWatcher("topLeftBg",{"propertyChange":true},[param4[18],param4[21]],param2);
         param5[17] = new PropertyWatcher("width",{"propertyChange":true},[param4[18],param4[21]],null);
         param5[40] = new PropertyWatcher("guardImage",{"propertyChange":true},[param4[67]],param2);
         param5[41] = new PropertyWatcher("width",{"propertyChange":true},[param4[67]],null);
         param5[26] = new PropertyWatcher("topGroup",{"propertyChange":true},[param4[32]],param2);
         param5[27] = new PropertyWatcher("height",{"heightChanged":true},[param4[32]],null);
         param5[19] = new PropertyWatcher("avatarImage",{"propertyChange":true},[param4[20]],param2);
         param5[20] = new PropertyWatcher("width",{"propertyChange":true},[param4[20]],null);
         param5[24].updateParent(param1);
         param5[24].addChild(param5[25]);
         param5[32].updateParent(param1);
         param5[32].addChild(param5[33]);
         param5[35].updateParent(param1);
         param5[35].addChild(param5[36]);
         param5[46].updateParent(param1);
         param5[46].addChild(param5[47]);
         param5[30].updateParent(param1);
         param5[30].addChild(param5[31]);
         param5[21].updateParent(param1);
         param5[21].addChild(param5[22]);
         param5[53].updateParent(param1);
         param5[53].addChild(param5[54]);
         param5[37].updateParent(param1);
         param5[37].addChild(param5[38]);
         param5[44].updateParent(param1);
         param5[44].addChild(param5[45]);
         param5[56].updateParent(param1);
         param5[56].addChild(param5[57]);
         param5[49].updateParent(param1);
         param5[49].addChild(param5[50]);
         param5[16].updateParent(param1);
         param5[16].addChild(param5[17]);
         param5[40].updateParent(param1);
         param5[40].addChild(param5[41]);
         param5[26].updateParent(param1);
         param5[26].addChild(param5[27]);
         param5[19].updateParent(param1);
         param5[19].addChild(param5[20]);
      }
   }
}

