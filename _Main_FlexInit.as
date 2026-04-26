package
{
   import flash.net.getClassByAlias;
   import flash.net.registerClassAlias;
   import flash.system.*;
   import flash.utils.*;
   import mx.accessibility.ButtonAccImpl;
   import mx.accessibility.UIComponentAccProps;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.effects.EffectManager;
   import mx.managers.SystemManagerGlobals;
   import mx.managers.systemClasses.ChildManager;
   import mx.resources.ResourceManager;
   import mx.styles.IStyleManager2;
   import mx.styles.StyleManagerImpl;
   import mx.utils.ObjectProxy;
   import spark.accessibility.ButtonBarBaseAccImpl;
   import spark.accessibility.ButtonBaseAccImpl;
   import spark.accessibility.CheckBoxAccImpl;
   import spark.accessibility.DataGridAccImpl;
   import spark.accessibility.DropDownListBaseAccImpl;
   import spark.accessibility.ListAccImpl;
   import spark.accessibility.ListBaseAccImpl;
   import spark.accessibility.PanelAccImpl;
   import spark.accessibility.RadioButtonAccImpl;
   import spark.accessibility.RichEditableTextAccImpl;
   import spark.accessibility.SliderBaseAccImpl;
   import spark.accessibility.TabBarAccImpl;
   import spark.accessibility.TextBaseAccImpl;
   import spark.accessibility.TitleWindowAccImpl;
   import spark.accessibility.ToggleButtonAccImpl;
   
   [Mixin]
   public class _Main_FlexInit
   {
      
      public function _Main_FlexInit()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var styleNames:Array;
         var i:int;
         var styleManager:IStyleManager2 = null;
         var fbs:IFlexModuleFactory = param1;
         new ChildManager(fbs);
         styleManager = new StyleManagerImpl(fbs);
         EffectManager.mx_internal::registerEffectTrigger("addedEffect","added");
         EffectManager.mx_internal::registerEffectTrigger("completeEffect","complete");
         EffectManager.mx_internal::registerEffectTrigger("creationCompleteEffect","creationComplete");
         EffectManager.mx_internal::registerEffectTrigger("focusInEffect","focusIn");
         EffectManager.mx_internal::registerEffectTrigger("focusOutEffect","focusOut");
         EffectManager.mx_internal::registerEffectTrigger("hideEffect","hide");
         EffectManager.mx_internal::registerEffectTrigger("mouseDownEffect","mouseDown");
         EffectManager.mx_internal::registerEffectTrigger("mouseUpEffect","mouseUp");
         EffectManager.mx_internal::registerEffectTrigger("moveEffect","move");
         EffectManager.mx_internal::registerEffectTrigger("removedEffect","removed");
         EffectManager.mx_internal::registerEffectTrigger("resizeEffect","resize");
         EffectManager.mx_internal::registerEffectTrigger("rollOutEffect","rollOut");
         EffectManager.mx_internal::registerEffectTrigger("rollOverEffect","rollOver");
         EffectManager.mx_internal::registerEffectTrigger("showEffect","show");
         if(Capabilities.hasAccessibility)
         {
            ListBaseAccImpl.enableAccessibility();
            ButtonBarBaseAccImpl.enableAccessibility();
            UIComponentAccProps.enableAccessibility();
            ListAccImpl.enableAccessibility();
            ButtonAccImpl.enableAccessibility();
            TitleWindowAccImpl.enableAccessibility();
            TextBaseAccImpl.enableAccessibility();
            DropDownListBaseAccImpl.enableAccessibility();
            ButtonBaseAccImpl.enableAccessibility();
            ToggleButtonAccImpl.enableAccessibility();
            PanelAccImpl.enableAccessibility();
            SliderBaseAccImpl.enableAccessibility();
            RadioButtonAccImpl.enableAccessibility();
            TabBarAccImpl.enableAccessibility();
            DataGridAccImpl.enableAccessibility();
            RichEditableTextAccImpl.enableAccessibility();
            CheckBoxAccImpl.enableAccessibility();
         }
         try
         {
            if(getClassByAlias("flex.messaging.io.ArrayCollection") != ArrayCollection)
            {
               registerClassAlias("flex.messaging.io.ArrayCollection",ArrayCollection);
               if(fbs != SystemManagerGlobals.topLevelSystemManagers[0])
               {
                  trace(ResourceManager.getInstance().getString("core","remoteClassMemoryLeak",["mx.collections.ArrayCollection","Main","_Main_FlexInit"]));
               }
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.io.ArrayCollection",ArrayCollection);
            if(fbs != SystemManagerGlobals.topLevelSystemManagers[0])
            {
               trace(ResourceManager.getInstance().getString("core","remoteClassMemoryLeak",["mx.collections.ArrayCollection","Main","_Main_FlexInit"]));
            }
         }
         try
         {
            if(getClassByAlias("flex.messaging.io.ArrayList") != ArrayList)
            {
               registerClassAlias("flex.messaging.io.ArrayList",ArrayList);
               if(fbs != SystemManagerGlobals.topLevelSystemManagers[0])
               {
                  trace(ResourceManager.getInstance().getString("core","remoteClassMemoryLeak",["mx.collections.ArrayList","Main","_Main_FlexInit"]));
               }
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.io.ArrayList",ArrayList);
            if(fbs != SystemManagerGlobals.topLevelSystemManagers[0])
            {
               trace(ResourceManager.getInstance().getString("core","remoteClassMemoryLeak",["mx.collections.ArrayList","Main","_Main_FlexInit"]));
            }
         }
         try
         {
            if(getClassByAlias("flex.messaging.io.ObjectProxy") != ObjectProxy)
            {
               registerClassAlias("flex.messaging.io.ObjectProxy",ObjectProxy);
               if(fbs != SystemManagerGlobals.topLevelSystemManagers[0])
               {
                  trace(ResourceManager.getInstance().getString("core","remoteClassMemoryLeak",["mx.utils.ObjectProxy","Main","_Main_FlexInit"]));
               }
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.io.ObjectProxy",ObjectProxy);
            if(fbs != SystemManagerGlobals.topLevelSystemManagers[0])
            {
               trace(ResourceManager.getInstance().getString("core","remoteClassMemoryLeak",["mx.utils.ObjectProxy","Main","_Main_FlexInit"]));
            }
         }
         styleNames = ["paragraphStartIndent","breakOpportunity","kerning","alternatingItemColors","wordSpacing","leading","fontAntiAliasType","selectionColor","labelWidth","cffHinting","contentBackgroundAlpha","fontFamily","digitCase","textSelectedColor","clearFloats","paragraphEndIndent","layoutDirection","ligatureLevel","strokeColor","downColor","dropShadowColor","shadowColor","fontWeight","interactionMode","dominantBaseline","textAlign","accentColor","justificationStyle","fontSharpness","whiteSpaceCollapse","contentBackgroundColor","textDecoration","fontLookup","fontStyle","chromeColor","digitWidth","focusColor","themeColor","listAutoPadding","blockProgression","showPromptWhenFocused","listStyleType","fontSize","textRollOverColor","textAlignLast","strokeWidth","trackingRight","fontGridFitType","paragraphSpaceAfter","showErrorSkin","errorColor","justificationRule","color","backgroundDisabledColor","textShadowColor","unfocusedTextSelectionColor","paragraphSpaceBefore","textIndent","textAlpha","locale"
         ,"baselineShift","barColor","fontThickness","touchDelay","textShadowAlpha","renderingMode","textJustify","textRotation","tabStops","direction","firstBaselineOffset","lineThrough","caretColor","symbolColor","focusedTextSelectionColor","letterSpacing","disabledColor","alignmentBaseline","trackingLeft","rollOverColor","listStylePosition","inactiveTextSelectionColor","lineHeight","leadingModel","showErrorTip","typographicCase"];
         i = 0;
         while(i < styleNames.length)
         {
            styleManager.registerInheritingStyle(styleNames[i]);
            i++;
         }
      }
   }
}

import mx.core.TextFieldFactory;

TextFieldFactory;

