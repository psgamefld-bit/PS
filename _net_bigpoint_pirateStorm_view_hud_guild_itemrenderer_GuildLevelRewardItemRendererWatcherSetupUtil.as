package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.guild.itemrenderer.GuildLevelRewardItemRenderer;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_guild_itemrenderer_GuildLevelRewardItemRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_guild_itemrenderer_GuildLevelRewardItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         GuildLevelRewardItemRenderer.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_guild_itemrenderer_GuildLevelRewardItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[6] = new PropertyWatcher("icon",{"propertyChange":true},[param4[6]],param2);
         param5[7] = new PropertyWatcher("width",{"widthChanged":true},[param4[6]],null);
         param5[6].updateParent(param1);
         param5[6].addChild(param5[7]);
      }
   }
}

