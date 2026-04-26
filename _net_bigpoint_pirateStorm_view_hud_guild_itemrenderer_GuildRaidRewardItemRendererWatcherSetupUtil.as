package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.guild.itemrenderer.GuildRaidRewardItemRenderer;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_guild_itemrenderer_GuildRaidRewardItemRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_guild_itemrenderer_GuildRaidRewardItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         GuildRaidRewardItemRenderer.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_guild_itemrenderer_GuildRaidRewardItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("icon",{"propertyChange":true},[param4[1]],param2);
         param5[3] = new PropertyWatcher("width",{"widthChanged":true},[param4[1]],null);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
      }
   }
}

