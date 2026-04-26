package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.deprecated.gui.view.components.window.avatar.AvatarTitlebarSkin;
   
   [ExcludeClass]
   public class _net_bigpoint_deprecated_gui_view_components_window_avatar_AvatarTitlebarSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_deprecated_gui_view_components_window_avatar_AvatarTitlebarSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         AvatarTitlebarSkin.watcherSetupUtil = new _net_bigpoint_deprecated_gui_view_components_window_avatar_AvatarTitlebarSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[4] = new PropertyWatcher("leftCorner",{"propertyChange":true},[param4[3],param4[4]],param2);
         param5[5] = new PropertyWatcher("x",{"propertyChange":true},[param4[3]],null);
         param5[6] = new PropertyWatcher("width",{"propertyChange":true},[param4[3],param4[4]],null);
         param5[2] = new PropertyWatcher("hostComponent",{"propertyChange":true},[param4[2]],param2);
         param5[3] = new PropertyWatcher("width",{"widthChanged":true},[param4[2]],null);
         param5[8] = new PropertyWatcher("middle",{"propertyChange":true},[param4[4],param4[9]],param2);
         param5[9] = new PropertyWatcher("x",{"propertyChange":true},[param4[4],param4[9]],null);
         param5[10] = new PropertyWatcher("width",{"propertyChange":true},[param4[4]],null);
         param5[4].updateParent(param1);
         param5[4].addChild(param5[5]);
         param5[4].addChild(param5[6]);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
         param5[8].updateParent(param1);
         param5[8].addChild(param5[9]);
         param5[8].addChild(param5[10]);
      }
   }
}

