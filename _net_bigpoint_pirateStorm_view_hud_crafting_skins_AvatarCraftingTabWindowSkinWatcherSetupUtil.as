package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.crafting.skins.AvatarCraftingTabWindowSkin;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_crafting_skins_AvatarCraftingTabWindowSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_crafting_skins_AvatarCraftingTabWindowSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         AvatarCraftingTabWindowSkin.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_crafting_skins_AvatarCraftingTabWindowSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[14] = new PropertyWatcher("topMiddleBg",{"propertyChange":true},[param4[16]],param2);
         param5[15] = new PropertyWatcher("x",{"propertyChange":true},[param4[16]],null);
         param5[6] = new PropertyWatcher("topLeftBg",{"propertyChange":true},[param4[7],param4[10]],param2);
         param5[7] = new PropertyWatcher("width",{"propertyChange":true},[param4[7],param4[10]],null);
         param5[20] = new PropertyWatcher("topGroup",{"propertyChange":true},[param4[21]],param2);
         param5[21] = new PropertyWatcher("height",{"heightChanged":true},[param4[21]],null);
         param5[11] = new PropertyWatcher("topRightBg",{"propertyChange":true},[param4[11],param4[15]],param2);
         param5[12] = new PropertyWatcher("width",{"propertyChange":true},[param4[11],param4[15]],null);
         param5[9] = new PropertyWatcher("avatarImage",{"propertyChange":true},[param4[9]],param2);
         param5[10] = new PropertyWatcher("width",{"propertyChange":true},[param4[9]],null);
         param5[22] = new PropertyWatcher("tabNavigation",{"propertyChange":true},[param4[22]],param2);
         param5[23] = new PropertyWatcher("topNavigation",{"propertyChange":true},[param4[22]],null);
         param5[24] = new PropertyWatcher("height",{"heightChanged":true},[param4[22]],null);
         param5[25] = new PropertyWatcher("subNavigation",{"propertyChange":true},[param4[22]],null);
         param5[26] = new PropertyWatcher("height",{"heightChanged":true},[param4[22]],null);
         param5[14].updateParent(param1);
         param5[14].addChild(param5[15]);
         param5[6].updateParent(param1);
         param5[6].addChild(param5[7]);
         param5[20].updateParent(param1);
         param5[20].addChild(param5[21]);
         param5[11].updateParent(param1);
         param5[11].addChild(param5[12]);
         param5[9].updateParent(param1);
         param5[9].addChild(param5[10]);
         param5[22].updateParent(param1);
         param5[22].addChild(param5[23]);
         param5[23].addChild(param5[24]);
         param5[22].addChild(param5[25]);
         param5[25].addChild(param5[26]);
      }
   }
}

