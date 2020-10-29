import Cocoa

open class UXLayerView: UXView {
   /**
    * - Fixme: ⚠️️ Might merge this class into UXView
    * - Parameters:
    *   - frame: Initial size and position of the frame
    */
   public override init(frame: CGRect = .zero) {
      super.init(frame: frame)
      self.wantsLayer = true // If true then view is layer backed
      self.layer?.rasterizationScale = 2.0 * NSScreen.main!.backingScaleFactor
      self.layer?.shouldRasterize = true
   }
}
