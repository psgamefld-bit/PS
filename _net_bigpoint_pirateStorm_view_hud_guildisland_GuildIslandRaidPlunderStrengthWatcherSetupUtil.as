package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.pirateStorm.view.hud.guildisland.GuildIslandRaidPlunderStrength;
   
   [ExcludeClass]
   public class _net_bigpoint_pirateStorm_view_hud_guildisland_GuildIslandRaidPlunderStrengthWatcherSetupUtil implements IWatcherSetupUtil2
   {
      
      public function _net_bigpoint_pirateStorm_view_hud_guildisland_GuildIslandRaidPlunderStrengthWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         GuildIslandRaidPlunderStrength.watcherSetupUtil = new _net_bigpoint_pirateStorm_view_hud_guildisland_GuildIslandRaidPlunderStrengthWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}

