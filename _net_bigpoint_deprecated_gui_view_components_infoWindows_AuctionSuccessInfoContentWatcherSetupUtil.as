package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.infoWindows.AuctionSuccessInfoContent;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_infoWindows_AuctionSuccessInfoContentWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_infoWindows_AuctionSuccessInfoContentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         AuctionSuccessInfoContent.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_infoWindows_AuctionSuccessInfoContentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[5] = new PropertyWatcher("awardImage",{"propertyChange":true},[param4[4],param4[6]],param2);
         param5[6] = new PropertyWatcher("width",{"propertyChange":true},[param4[4],param4[6]],null);
         param5[2] = new PropertyWatcher("awardBG",{"propertyChange":true},[param4[2]],param2);
         param5[3] = new PropertyWatcher("width",{"propertyChange":true},[param4[2]],null);
         param5[5].updateParent(param1);
         param5[5].addChild(param5[6]);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
      }
   }
}

