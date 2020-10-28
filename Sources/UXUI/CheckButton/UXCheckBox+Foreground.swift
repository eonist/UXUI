import Cocoa

extension UXCheckBox {
   /**
    * Foreground
    * - Fixme: ⚠️️ move the init to a UXLayerView or UXGraphicView ?
    */
   public final class Foreground: UXView {
      public override init(frame: CGRect = .zero) {
         super.init(frame: frame)
         self.wantsLayer = true // If true then view is layer backed
         self.layer?.rasterizationScale = 2.0 * NSScreen.main!.backingScaleFactor
         self.layer?.shouldRasterize = true
      }
      /**
       * - Abstract. the drawlayout method is the only method were we can get frame when using autolayout
       */
      public override func layout() {
         super.layout()
         self.layer?.cornerRadius = self.frame.height / 2
      }
   }
}
