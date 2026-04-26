package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.minigame.deckLayer.MiniGameDeckLayer;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_minigame_deckLayer_MiniGameDeckLayerWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_minigame_deckLayer_MiniGameDeckLayerWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MiniGameDeckLayer.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_minigame_deckLayer_MiniGameDeckLayerWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[5] = new PropertyWatcher("shipNamesDropDown",{"propertyChange":true},[param4[5],param4[6]],param2);
         param5[6] = new PropertyWatcher("selectedItem",{
            "change":true,
            "valueCommit":true
         },[param4[5]],null);
         param5[7] = new PropertyWatcher("loadOuts",null,[param4[5]],null);
         param5[8] = new PropertyWatcher("selectedIndex",{
            "change":true,
            "valueCommit":true
         },[param4[6]],null);
         param5[9] = new PropertyWatcher("loadOutDropDown",{"propertyChange":true},[param4[7]],param2);
         param5[10] = new PropertyWatcher("dataProvider",{"dataProviderChanged":true},[param4[7]],null);
         param5[5].updateParent(param1);
         param5[5].addChild(param5[6]);
         param5[6].addChild(param5[7]);
         param5[5].addChild(param5[8]);
         param5[9].updateParent(param1);
         param5[9].addChild(param5[10]);
      }
   }
}

