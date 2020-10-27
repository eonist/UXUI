import Foundation

extension VolumeSlider {
   /**
    * RoundedThumb
    */
   public final class RoundedThumb: Thumb {
      /**
       * - Abstract. the drawlayout method is the only method were we can get frame when using autolayout
       */
      public override func layout() {
         super.layout()
         self.layer?.cornerRadius = self.frame.height / 2
      }
   }
}
