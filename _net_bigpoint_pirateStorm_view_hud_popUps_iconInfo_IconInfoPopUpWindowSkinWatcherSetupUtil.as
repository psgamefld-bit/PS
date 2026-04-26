package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.popUps.iconInfo.IconInfoPopUpWindowSkin;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_popUps_iconInfo_IconInfoPopUpWindowSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_popUps_iconInfo_IconInfoPopUpWindowSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         IconInfoPopUpWindowSkin.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_popUps_iconInfo_IconInfoPopUpWindowSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[14] = new PropertyWatcher("icon",{"propertyChange":true},[param4[13]],param2);
         param5[15] = new PropertyWatcher("width",{"propertyChange":true},[param4[13]],null);
         param5[3] = new PropertyWatcher("topLeftBg",{"propertyChange":true},[param4[4]],param2);
         param5[4] = new PropertyWatcher("width",{"propertyChange":true},[param4[4]],null);
         param5[10] = new PropertyWatcher("topGroup",{"propertyChange":true},[param4[11],param4[14]],param2);
         param5[11] = new PropertyWatcher("height",{"heightChanged":true},[param4[11],param4[14]],null);
         param5[5] = new PropertyWatcher("topRightBg",{"propertyChange":true},[param4[5]],param2);
         param5[6] = new PropertyWatcher("width",{"propertyChange":true},[param4[5]],null);
         param5[14].updateParent(param1);
         param5[14].addChild(param5[15]);
         param5[3].updateParent(param1);
         param5[3].addChild(param5[4]);
         param5[10].updateParent(param1);
         param5[10].addChild(param5[11]);
         param5[5].updateParent(param1);
         param5[5].addChild(param5[6]);
      }
   }
}

