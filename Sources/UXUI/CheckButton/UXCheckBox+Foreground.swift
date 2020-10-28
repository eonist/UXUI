import Cocoa

extension UXCheckBox {
   /**
    * Foreground
    * - Fixme: ⚠️️ move the init to a UXLayerView or UXGraphicView ?
    */
   public final class Foreground: UXLayerView {
      /**
       * - Abstract. the drawlayout method is the only method were we can get frame when using autolayout
       */
      public override func layout() {
         super.layout()
         self.layer?.cornerRadius = self.frame.height / 2
      }
   }
}
