package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol138")]
   public dynamic class personalOfferMC extends MovieClip
   {
      
      public var personalOfferHighPass:MovieClip;
      
      public var personalOfferMask:MovieClip;
      
      public function personalOfferMC()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame2() : *
      {
         this.personalOfferMask.cacheAsBitmap = true;
         this.personalOfferHighPass.cacheAsBitmap = true;
         this.personalOfferHighPass.mask = this.personalOfferMask;
      }
   }
}

