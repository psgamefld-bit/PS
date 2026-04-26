package
{
   import flash.display.LoaderInfo;
   import flash.system.ApplicationDomain;
   import flash.system.Security;
   import flash.utils.Dictionary;
   import flashx.textLayout.compose.ISWFContext;
   import mx.core.EmbeddedFontRegistry;
   import mx.core.IFlexModule;
   import mx.core.IFlexModuleFactory;
   import mx.core.Singleton;
   import mx.events.RSLEvent;
   import mx.managers.SystemManager;
   import net.bigpoint.pirateStorm.view.preloader.PiratesPreloader;
   
   [ExcludeClass]
   public class _Main_mx_managers_SystemManager extends SystemManager implements IFlexModuleFactory, ISWFContext
   {
      
      private var _info:Object;
      
      private var _preloadedRSLs:Dictionary;
      
      private var _allowDomainParameters:Vector.<Array>;
      
      private var _allowInsecureDomainParameters:Vector.<Array>;
      
      public function _Main_mx_managers_SystemManager()
      {
         super();
      }
      
      override public function callInContext(fn:Function, thisArg:Object, argArray:Array, returns:Boolean = true) : *
      {
         if(returns)
         {
            return fn.apply(thisArg,argArray);
         }
         fn.apply(thisArg,argArray);
      }
      
      override public function create(... params) : Object
      {
         if(params.length > 0 && !(params[0] is String))
         {
            return super.create.apply(this,params);
         }
         var mainClassName:String = params.length == 0 ? "Main" : String(params[0]);
         var mainClass:Class = Class(getDefinitionByName(mainClassName));
         if(!mainClass)
         {
            return null;
         }
         var instance:Object = new mainClass();
         if(instance is IFlexModule)
         {
            IFlexModule(instance).moduleFactory = this;
         }
         if(params.length == 0)
         {
            Singleton.registerClass("mx.core::IEmbeddedFontRegistry",Class(getDefinitionByName("mx.core::EmbeddedFontRegistry")));
            EmbeddedFontRegistry.registerFonts(this.info()["fonts"],this);
         }
         return instance;
      }
      
      override public function info() : Object
      {
         if(!this._info)
         {
            this._info = {
               "addedToStage":"addedToStage()",
               "backgroundColor":"0x0",
               "compiledLocales":["en_US"],
               "compiledResourceBundleNames":["SharedResources","collections","components","containers","controls","core","effects","formatters","layout","logging","skins","sparkEffects","styles","textLayout"],
               "currentDomain":ApplicationDomain.currentDomain,
               "fonts":{
                  "DejaVu":{
                     "regular":true,
                     "bold":true,
                     "italic":false,
                     "boldItalic":false
                  },
                  "MainFont":{
                     "regular":true,
                     "bold":true,
                     "italic":false,
                     "boldItalic":false
                  }
               },
               "frameRate":"45",
               "mainClassName":"Main",
               "mixins":["_Main_FlexInit","_Main_Styles","mx.managers.systemClasses.ActiveWindowManager"],
               "preloader":PiratesPreloader
            };
         }
         return this._info;
      }
      
      override public function get preloadedRSLs() : Dictionary
      {
         if(this._preloadedRSLs == null)
         {
            this._preloadedRSLs = new Dictionary(true);
         }
         return this._preloadedRSLs;
      }
      
      override public function allowDomain(... domains) : void
      {
         var loaderInfo:Object = null;
         Security.allowDomain.apply(null,domains);
         for(loaderInfo in this._preloadedRSLs)
         {
            if(Boolean(loaderInfo.content) && "allowDomainInRSL" in loaderInfo.content)
            {
               loaderInfo.content["allowDomainInRSL"].apply(null,domains);
            }
         }
         if(!this._allowDomainParameters)
         {
            this._allowDomainParameters = new Vector.<Array>();
         }
         this._allowDomainParameters.push(domains);
         addEventListener(RSLEvent.RSL_ADD_PRELOADED,this.addPreloadedRSLHandler,false,50);
      }
      
      override public function allowInsecureDomain(... domains) : void
      {
         var loaderInfo:Object = null;
         Security.allowInsecureDomain.apply(null,domains);
         for(loaderInfo in this._preloadedRSLs)
         {
            if(Boolean(loaderInfo.content) && "allowInsecureDomainInRSL" in loaderInfo.content)
            {
               loaderInfo.content["allowInsecureDomainInRSL"].apply(null,domains);
            }
         }
         if(!this._allowInsecureDomainParameters)
         {
            this._allowInsecureDomainParameters = new Vector.<Array>();
         }
         this._allowInsecureDomainParameters.push(domains);
         addEventListener(RSLEvent.RSL_ADD_PRELOADED,this.addPreloadedRSLHandler,false,50);
      }
      
      private function addPreloadedRSLHandler(event:RSLEvent) : void
      {
         var domains:Array = null;
         var loaderInfo:LoaderInfo = event.loaderInfo;
         if(!loaderInfo || !loaderInfo.content)
         {
            return;
         }
         if(allowDomainsInNewRSLs && Boolean(this._allowDomainParameters))
         {
            for each(domains in this._allowDomainParameters)
            {
               if("allowDomainInRSL" in loaderInfo.content)
               {
                  loaderInfo.content["allowDomainInRSL"].apply(null,domains);
               }
            }
         }
         if(allowInsecureDomainsInNewRSLs && Boolean(this._allowInsecureDomainParameters))
         {
            for each(domains in this._allowInsecureDomainParameters)
            {
               if("allowInsecureDomainInRSL" in loaderInfo.content)
               {
                  loaderInfo.content["allowInsecureDomainInRSL"].apply(null,domains);
               }
            }
         }
      }
   }
}

