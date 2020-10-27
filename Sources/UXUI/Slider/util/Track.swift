import Cocoa
/**
 * Track
 */
open class Track: InteractiveView {
   public override init(frame: CGRect = .zero) {
      super.init(frame: frame)
      self.wantsLayer = true // If true then view is layer backed
      self.layer?.rasterizationScale = 2.0 * NSScreen.main!.backingScaleFactor
      self.layer?.shouldRasterize = true
   }
}
