package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.infoWindows.SkillMaxedInfoContent;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_infoWindows_SkillMaxedInfoContentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_infoWindows_SkillMaxedInfoContentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SkillMaxedInfoContent.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_infoWindows_SkillMaxedInfoContentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[5] = new PropertyWatcher("awardBGImage",{"propertyChange":true},[param4[4]],param2);
         param5[6] = new PropertyWatcher("width",{"propertyChange":true},[param4[4]],null);
         param5[8] = new PropertyWatcher("awardImage",{"propertyChange":true},[param4[6]],param2);
         param5[9] = new PropertyWatcher("width",{"propertyChange":true},[param4[6]],null);
         param5[11] = new PropertyWatcher("awardIndicator",{"propertyChange":true},[param4[9]],param2);
         param5[12] = new PropertyWatcher("width",{"propertyChange":true},[param4[9]],null);
         param5[2] = new PropertyWatcher("awardBG",{"propertyChange":true},[param4[2]],param2);
         param5[3] = new PropertyWatcher("width",{"propertyChange":true},[param4[2]],null);
         param5[5].updateParent(param1);
         param5[5].addChild(param5[6]);
         param5[8].updateParent(param1);
         param5[8].addChild(param5[9]);
         param5[11].updateParent(param1);
         param5[11].addChild(param5[12]);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
      }
   }
}

