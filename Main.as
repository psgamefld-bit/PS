package
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.containers.VBox;
   import mx.containers.ViewStack;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.UIFTETextField;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import mx.styles.*;
   import net.bigpoint.deprecated.game.debug.DebugView;
   import net.bigpoint.deprecated.game.model.ConfigProxy;
   import net.bigpoint.deprecated.game.model.UpdateHandler;
   import net.bigpoint.deprecated.gui.model.services.PiratesStrings;
   import net.bigpoint.deprecated.gui.view.PiratesToolTipBorder;
   import net.bigpoint.deprecated.gui.view.components.common.skin.CheckboxLabeledLeftSkin;
   import net.bigpoint.deprecated.gui.view.components.common.skin.RadioButtonSkin;
   import net.bigpoint.deprecated.gui.view.components.common.skin.SliderSkin;
   import net.bigpoint.deprecated.gui.view.components.hud.buttons.CheckboxButtonSkin;
   import net.bigpoint.deprecated.gui.view.components.hud.buttons.TabSwitchButtonSkin;
   import net.bigpoint.deprecated.gui.view.components.maps.bonusmap.BonusMapWarningPanelSkin;
   import net.bigpoint.deprecated.gui.view.components.window.RestorationWindowSkin;
   import net.bigpoint.deprecated.gui.view.components.window.TabBarIconSkin;
   import net.bigpoint.deprecated.gui.view.components.window.arena.components.ArenaInfoPanelComponentSkin;
   import net.bigpoint.deprecated.gui.view.components.window.arena.components.KickInfoPanelSkin;
   import net.bigpoint.deprecated.gui.view.components.window.common.PagingLinkSkin;
   import net.bigpoint.deprecated.gui.view.components.window.guild.infopanel.GuildInfoPanelSkin;
   import net.bigpoint.deprecated.gui.view.components.window.harbour.shipyard.LoadoutPurchasePanelSkin;
   import net.bigpoint.deprecated.gui.view.components.window.harbour.shipyard.ShipyardInfoPanelSkin;
   import net.bigpoint.deprecated.gui.view.components.window.items.inventory.EquipInfoPanelSkin;
   import net.bigpoint.deprecated.gui.view.components.window.items.shop.BuyInfoPanelSkin;
   import net.bigpoint.deprecated.gui.view.components.window.options.skins.EffectSettingsRowSkin;
   import net.bigpoint.deprecated.gui.view.components.window.options.skins.OptionSliderItemSkin;
   import net.bigpoint.deprecated.gui.view.components.window.options.skins.OptionSpinnerItemSkin;
   import net.bigpoint.pirateStorm.ApplicationFacade;
   import net.bigpoint.pirateStorm.view.hud.common.components.skins.AccordionMenuSectionSkin;
   import net.bigpoint.pirateStorm.view.hud.common.components.skins.CustomAccordionHeaderSkin;
   import net.bigpoint.pirateStorm.view.hud.common.components.skins.alternativeScroller.VScrollBarInvertedSkin;
   import net.bigpoint.pirateStorm.view.hud.common.components.skins.alternativeScroller.VScrollBarSkin;
   import net.bigpoint.pirateStorm.view.hud.common.components.skins.scroller.VScrollBarSkin;
   import net.bigpoint.pirateStorm.view.hud.tabbedMessageArea.skins.scrollers.PiratesSmallVScrollBarSkin;
   import net.bigpoint.pirateStorm.view.introScreen.IntroScreen;
   import net.bigpoint.pirateStorm.view.mainScreen.MainScreen;
   import net.bigpoint.utils.debug.Stats;
   import spark.components.Application;
   
   use namespace mx_internal;
   
   [Frame(factoryClass="_Main_mx_managers_SystemManager")]
   [Frame(extraClass="_Main_FlexInit")]
   [SWF(backgroundColor="0",frameRate="45")]
   public class Main extends Application
   {
      
      private static var _version:String;
      
      private static var $debugStage:Stage;
      
      private static var $debugStats:Stats;
      
      private static var $isStatsOn:Boolean;
      
      public static const USED_FONT:String = "Arial";
      
      private static var IS_STANDALONE:Boolean = true;
      
      private static var facade:ApplicationFacade = ApplicationFacade.getInstance();
      
      public static var DEBUG_MODE:Boolean = false;
      
      private static var _skinParts:Object = {
         "controlBarGroup":false,
         "contentGroup":false
      };
      
      private static const logger:ILogger = Log.getLogger("Main");
      
      private var _37580296introScreen:IntroScreen;
      
      private var _449233797mainScreen:MainScreen;
      
      private var _838325319vwStack:ViewStack;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _startValues:Object = new Object();
      
      mx_internal var _Main_StylesInit_done:Boolean = false;
      
      private var _embed__font_DejaVu_bold_normal_1719970581:Class = Main__embed__font_DejaVu_bold_normal_1719970581;
      
      private var _embed__font_MainFont_bold_normal_1989727941:Class = Main__embed__font_MainFont_bold_normal_1989727941;
      
      private var _embed__font_DejaVu_medium_normal_1884285383:Class = Main__embed__font_DejaVu_medium_normal_1884285383;
      
      private var _embed__font_MainFont_medium_normal_435459808:Class = Main__embed__font_MainFont_medium_normal_435459808;
      
      public function Main()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._Main_Array1_c);
         this.addEventListener("addedToStage",this.___Main_Application1_addedToStage);
      }
      
      public static function toggleStats() : void
      {
         if(!$debugStats)
         {
            $debugStats = new Stats(150,5,5,false,true,true);
            $debugStage.addChild($debugStats);
         }
         if($isStatsOn)
         {
            $isStatsOn = false;
         }
         else
         {
            $isStatsOn = true;
         }
         $debugStats.visible = $isStatsOn;
      }
      
      public static function isStandalone() : Boolean
      {
         return IS_STANDALONE;
      }
      
      public static function get version() : String
      {
         return _version;
      }
      
      public static function getDebugStage() : Stage
      {
         return $debugStage;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var factory:IFlexModuleFactory = param1;
         super.moduleFactory = factory;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration(null,styleManager);
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.backgroundColor = 0;
         };
         mx_internal::_Main_StylesInit();
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private function addedToStage() : void
      {
         var ui:UIComponent;
         var info:LoaderInfo = null;
         var url:String = null;
         var debug:String = null;
         var protocol:String = null;
         var host:String = null;
         var cm:ContextMenu = null;
         var cmi:ContextMenuItem = null;
         logger.debug("addedToStage()");
         Security.allowDomain("*");
         ui = new UIComponent();
         ui.addChild(new DebugView(10,10,true));
         this.addElement(ui);
         try
         {
            info = LoaderInfo(this.root.loaderInfo);
            this._startValues = info.parameters;
            url = info.loaderURL;
            if(url.charAt(0) == "h")
            {
               IS_STANDALONE = false;
               protocol = url.substr(0,url.indexOf(":") + 3);
               url = url.substr(protocol.length,url.length);
               url = url.substr(0,url.indexOf(PiratesStrings.SLASH));
               host = protocol + url + PiratesStrings.SLASH;
               if(this._startValues[ConfigProxy.WEB_HOST] == null)
               {
                  this._startValues[ConfigProxy.WEB_HOST] = host;
               }
               if(this._startValues[ConfigProxy.CDN_HOST] == null)
               {
                  this._startValues[ConfigProxy.CDN_HOST] = host;
               }
               if(this._startValues[ConfigProxy.HOST] == null)
               {
                  this._startValues[ConfigProxy.HOST] = url;
               }
               _version = this._startValues["version"];
               if(_version != null)
               {
                  cm = new ContextMenu();
                  cm.hideBuiltInItems();
                  cmi = new ContextMenuItem("Version: " + _version);
                  cmi.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT,this.copyVersionToClipBoard);
                  cm.customItems.push(cmi);
                  this.contextMenu = cm;
               }
            }
            debug = this._startValues["debug"];
            if(debug != null && debug.length > 0)
            {
               DEBUG_MODE = true;
               DebugView.getInstance().toggle();
            }
         }
         catch(error:Error)
         {
            Log.getLogger("Main_getFlashvars").warn("Error: " + error.getStackTrace());
         }
         facade.startup(this);
         addEventListener(Event.ENTER_FRAME,UpdateHandler.onEnterFrame);
         $debugStage = this.stage;
      }
      
      private function copyVersionToClipBoard(event:Event) : void
      {
         System.setClipboard(_version);
      }
      
      public function get startValues() : Object
      {
         return this._startValues;
      }
      
      private function _Main_Array1_c() : Array
      {
         return [this._Main_ViewStack1_i()];
      }
      
      private function _Main_ViewStack1_i() : ViewStack
      {
         var temp:ViewStack = new ViewStack();
         temp.left = 0;
         temp.top = 0;
         temp.right = 0;
         temp.bottom = 0;
         temp.resizeToContent = false;
         temp.creationPolicy = "auto";
         temp.id = "vwStack";
         if(!temp.document)
         {
            temp.document = this;
         }
         temp.mx_internal::_documentDescriptor = new UIComponentDescriptor({
            "type":ViewStack,
            "id":"vwStack",
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({"type":VBox}),new UIComponentDescriptor({
                  "type":IntroScreen,
                  "id":"introScreen"
               }),new UIComponentDescriptor({
                  "type":MainScreen,
                  "id":"mainScreen"
               })]};
            }
         });
         temp.mx_internal::_documentDescriptor.document = this;
         this.vwStack = temp;
         BindingManager.executeBindings(this,"vwStack",this.vwStack);
         return temp;
      }
      
      public function ___Main_Application1_addedToStage(event:Event) : void
      {
         this.addedToStage();
      }
      
      mx_internal function _Main_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         var conditions:Array = null;
         var condition:CSSCondition = null;
         var selector:CSSSelector = null;
         if(Boolean(mx_internal::_Main_StylesInit_done))
         {
            return;
         }
         mx_internal::_Main_StylesInit_done = true;
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.Application",conditions,selector);
         style = styleManager.getStyleDeclaration("spark.components.Application");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "MainFont";
               this.fontSize = 11;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","defaultAccordionHeader");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".defaultAccordionHeader");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.color = 16777215;
               this.textFieldClass = UIFTETextField;
               this.paddingRight = 15;
               this.skin = CustomAccordionHeaderSkin;
               this.textSelectedColor = 16763972;
               this.textRollOverColor = 16763972;
               this.paddingTop = -2;
               this.paddingLeft = 15;
               this.fontWeight = "bold";
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("net.bigpoint.deprecated.gui.view.components.common.LabeledSliderComponent",conditions,selector);
         conditions = [];
         condition = new CSSCondition("id","textElement");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration("net.bigpoint.deprecated.gui.view.components.common.LabeledSliderComponent #textElement");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.color = 16777215;
               this.left = 0;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("net.bigpoint.deprecated.gui.view.components.common.LabeledSliderComponent",conditions,selector);
         conditions = [];
         condition = new CSSCondition("id","slider");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration("net.bigpoint.deprecated.gui.view.components.common.LabeledSliderComponent #slider");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.right = 0;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.ToolTip",conditions,selector);
         style = styleManager.getStyleDeclaration("mx.controls.ToolTip");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.textFieldClass = UIFTETextField;
               this.borderSkin = PiratesToolTipBorder;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.ProgressBar",conditions,selector);
         style = styleManager.getStyleDeclaration("mx.controls.ProgressBar");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.textFieldClass = UIFTETextField;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("net.bigpoint.pirateStorm.controls.RTLToolTip",conditions,selector);
         style = styleManager.getStyleDeclaration("net.bigpoint.pirateStorm.controls.RTLToolTip");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.textAlign = "right";
               this.textFieldClass = UIFTETextField;
               this.borderSkin = PiratesToolTipBorder;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("id","scrollBarLessScroller");
         conditions.push(condition);
         selector = new CSSSelector("spark.components.Scroller",conditions,selector);
         style = styleManager.getStyleDeclaration("spark.components.Scroller#scrollBarLessScroller");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.horizontalScrollPolicy = "off";
               this.verticalScrollPolicy = "off";
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.VScrollBar",conditions,selector);
         style = styleManager.getStyleDeclaration("spark.components.VScrollBar");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fixedThumbSize = true;
               this.skinClass = VScrollBarSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","alternativeScroller");
         conditions.push(condition);
         selector = new CSSSelector("*",conditions,selector);
         conditions = null;
         selector = new CSSSelector("spark.components.VScrollBar",conditions,selector);
         style = styleManager.getStyleDeclaration("*.alternativeScroller spark.components.VScrollBar");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fixedThumbSize = true;
               this.skinClass = VScrollBarSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","alternativeInvertedScroller");
         conditions.push(condition);
         selector = new CSSSelector("*",conditions,selector);
         conditions = null;
         selector = new CSSSelector("spark.components.VScrollBar",conditions,selector);
         style = styleManager.getStyleDeclaration("*.alternativeInvertedScroller spark.components.VScrollBar");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fixedThumbSize = true;
               this.skinClass = VScrollBarInvertedSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("id","systemLogScroller");
         conditions.push(condition);
         selector = new CSSSelector("*",conditions,selector);
         conditions = null;
         selector = new CSSSelector("spark.components.VScrollBar",conditions,selector);
         style = styleManager.getStyleDeclaration("*#systemLogScroller spark.components.VScrollBar");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fixedThumbSize = false;
               this.skinClass = PiratesSmallVScrollBarSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("id","scrollerMessages");
         conditions.push(condition);
         selector = new CSSSelector("*",conditions,selector);
         conditions = null;
         selector = new CSSSelector("spark.components.VScrollBar",conditions,selector);
         style = styleManager.getStyleDeclaration("*#scrollerMessages spark.components.VScrollBar");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fixedThumbSize = false;
               this.skinClass = PiratesSmallVScrollBarSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.HSlider",conditions,selector);
         style = styleManager.getStyleDeclaration("spark.components.HSlider");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = SliderSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.CheckBox",conditions,selector);
         style = styleManager.getStyleDeclaration("spark.components.CheckBox");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = CheckboxButtonSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.RadioButton",conditions,selector);
         style = styleManager.getStyleDeclaration("spark.components.RadioButton");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = RadioButtonSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("net.bigpoint.deprecated.gui.view.components.window.TabBarIconComponent",conditions,selector);
         style = styleManager.getStyleDeclaration("net.bigpoint.deprecated.gui.view.components.window.TabBarIconComponent");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = TabBarIconSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("net.bigpoint.deprecated.gui.view.components.window.RestorationWindowComponent",conditions,selector);
         style = styleManager.getStyleDeclaration("net.bigpoint.deprecated.gui.view.components.window.RestorationWindowComponent");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = RestorationWindowSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("net.bigpoint.deprecated.gui.view.components.hud.buttons.TabSwitchButtonComponent",conditions,selector);
         style = styleManager.getStyleDeclaration("net.bigpoint.deprecated.gui.view.components.hud.buttons.TabSwitchButtonComponent");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = TabSwitchButtonSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("net.bigpoint.deprecated.gui.view.components.window.items.inventory.EquipInfoPanelComponent",conditions,selector);
         style = styleManager.getStyleDeclaration("net.bigpoint.deprecated.gui.view.components.window.items.inventory.EquipInfoPanelComponent");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = EquipInfoPanelSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("net.bigpoint.deprecated.gui.view.components.window.items.shop.BuyInfoPanelComponent",conditions,selector);
         style = styleManager.getStyleDeclaration("net.bigpoint.deprecated.gui.view.components.window.items.shop.BuyInfoPanelComponent");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = BuyInfoPanelSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("net.bigpoint.deprecated.gui.view.components.window.harbour.shipyard.ShipyardInfoPanelComponent",conditions,selector);
         style = styleManager.getStyleDeclaration("net.bigpoint.deprecated.gui.view.components.window.harbour.shipyard.ShipyardInfoPanelComponent");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = ShipyardInfoPanelSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("net.bigpoint.deprecated.gui.view.components.window.harbour.shipyard.LoadoutPurchasePanelComponent",conditions,selector);
         style = styleManager.getStyleDeclaration("net.bigpoint.deprecated.gui.view.components.window.harbour.shipyard.LoadoutPurchasePanelComponent");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = LoadoutPurchasePanelSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("net.bigpoint.deprecated.gui.view.components.window.guild.infopanel.GuildInfoPanelComponent",conditions,selector);
         style = styleManager.getStyleDeclaration("net.bigpoint.deprecated.gui.view.components.window.guild.infopanel.GuildInfoPanelComponent");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = GuildInfoPanelSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("net.bigpoint.deprecated.gui.view.components.window.arena.components.KickInfoPanelComponent",conditions,selector);
         style = styleManager.getStyleDeclaration("net.bigpoint.deprecated.gui.view.components.window.arena.components.KickInfoPanelComponent");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = KickInfoPanelSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("net.bigpoint.deprecated.gui.view.components.window.arena.components.ArenaInfoPanelComponent",conditions,selector);
         style = styleManager.getStyleDeclaration("net.bigpoint.deprecated.gui.view.components.window.arena.components.ArenaInfoPanelComponent");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = ArenaInfoPanelComponentSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("net.bigpoint.deprecated.gui.view.components.maps.bonusmap.BonusMapWarningPanelComponent",conditions,selector);
         style = styleManager.getStyleDeclaration("net.bigpoint.deprecated.gui.view.components.maps.bonusmap.BonusMapWarningPanelComponent");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = BonusMapWarningPanelSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("net.bigpoint.deprecated.gui.view.components.window.common.PagingLinkComponent",conditions,selector);
         style = styleManager.getStyleDeclaration("net.bigpoint.deprecated.gui.view.components.window.common.PagingLinkComponent");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = PagingLinkSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("net.bigpoint.pirateStorm.view.hud.common.components.AccordionMenuSection",conditions,selector);
         style = styleManager.getStyleDeclaration("net.bigpoint.pirateStorm.view.hud.common.components.AccordionMenuSection");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = AccordionMenuSectionSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("id","generalSettingItems");
         conditions.push(condition);
         selector = new CSSSelector("spark.components.VGroup",conditions,selector);
         conditions = null;
         selector = new CSSSelector("net.bigpoint.deprecated.gui.view.components.common.LabeledCheckboxComponent",conditions,selector);
         style = styleManager.getStyleDeclaration("spark.components.VGroup#generalSettingItems net.bigpoint.deprecated.gui.view.components.common.LabeledCheckboxComponent");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = CheckboxLabeledLeftSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("id","soundSettingItems");
         conditions.push(condition);
         selector = new CSSSelector("spark.components.VGroup",conditions,selector);
         conditions = null;
         selector = new CSSSelector("net.bigpoint.deprecated.gui.view.components.common.LabeledCheckboxComponent",conditions,selector);
         style = styleManager.getStyleDeclaration("spark.components.VGroup#soundSettingItems net.bigpoint.deprecated.gui.view.components.common.LabeledCheckboxComponent");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = CheckboxLabeledLeftSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("id","tickerSettingItems");
         conditions.push(condition);
         selector = new CSSSelector("spark.components.Group",conditions,selector);
         conditions = null;
         selector = new CSSSelector("net.bigpoint.deprecated.gui.view.components.common.LabeledCheckboxComponent",conditions,selector);
         style = styleManager.getStyleDeclaration("spark.components.Group#tickerSettingItems net.bigpoint.deprecated.gui.view.components.common.LabeledCheckboxComponent");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = CheckboxLabeledLeftSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("id","generalSettingItems");
         conditions.push(condition);
         selector = new CSSSelector("spark.components.VGroup",conditions,selector);
         conditions = null;
         selector = new CSSSelector("net.bigpoint.deprecated.gui.view.components.common.LabeledSpinnerComponent",conditions,selector);
         style = styleManager.getStyleDeclaration("spark.components.VGroup#generalSettingItems net.bigpoint.deprecated.gui.view.components.common.LabeledSpinnerComponent");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = OptionSpinnerItemSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("id","tickerSettingItems");
         conditions.push(condition);
         selector = new CSSSelector("spark.components.Group",conditions,selector);
         conditions = null;
         selector = new CSSSelector("net.bigpoint.deprecated.gui.view.components.common.LabeledSpinnerComponent",conditions,selector);
         style = styleManager.getStyleDeclaration("spark.components.Group#tickerSettingItems net.bigpoint.deprecated.gui.view.components.common.LabeledSpinnerComponent");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = OptionSpinnerItemSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("id","soundSettingItems");
         conditions.push(condition);
         selector = new CSSSelector("spark.components.VGroup",conditions,selector);
         conditions = null;
         selector = new CSSSelector("net.bigpoint.deprecated.gui.view.components.common.LabeledSliderComponent",conditions,selector);
         style = styleManager.getStyleDeclaration("spark.components.VGroup#soundSettingItems net.bigpoint.deprecated.gui.view.components.common.LabeledSliderComponent");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = OptionSliderItemSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("id","fxSettingItems");
         conditions.push(condition);
         selector = new CSSSelector("spark.components.VGroup",conditions,selector);
         conditions = null;
         selector = new CSSSelector("net.bigpoint.deprecated.gui.view.components.window.options.EffectSettingRowComponent",conditions,selector);
         style = styleManager.getStyleDeclaration("spark.components.VGroup#fxSettingItems net.bigpoint.deprecated.gui.view.components.window.options.EffectSettingRowComponent");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = EffectSettingsRowSkin;
            };
         }
         styleManager.initProtoChainRoots();
      }
      
      [Bindable(event="propertyChange")]
      public function get introScreen() : IntroScreen
      {
         return this._37580296introScreen;
      }
      
      public function set introScreen(param1:IntroScreen) : void
      {
         var _loc2_:Object = this._37580296introScreen;
         if(_loc2_ !== param1)
         {
            this._37580296introScreen = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"introScreen",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainScreen() : MainScreen
      {
         return this._449233797mainScreen;
      }
      
      public function set mainScreen(param1:MainScreen) : void
      {
         var _loc2_:Object = this._449233797mainScreen;
         if(_loc2_ !== param1)
         {
            this._449233797mainScreen = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainScreen",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vwStack() : ViewStack
      {
         return this._838325319vwStack;
      }
      
      public function set vwStack(param1:ViewStack) : void
      {
         var _loc2_:Object = this._838325319vwStack;
         if(_loc2_ !== param1)
         {
            this._838325319vwStack = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vwStack",_loc2_,param1));
            }
         }
      }
   }
}

