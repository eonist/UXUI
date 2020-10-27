import Cocoa
import Spatial

open class Thumb: InteractiveView {
   public override init(frame: CGRect = .zero) {
      super.init(frame: frame)
      self.wantsLayer = true // If true then view is layer backed
      self.layer?.rasterizationScale = 2.0 * NSScreen.main!.backingScaleFactor
      self.layer?.shouldRasterize = true
   }
   /**
    * Mouse dragged
    */
   override open func mouseDragged(with event: NSEvent) {
      let p: CGPoint = self.superview!.convert(event.locationInWindow, from: nil)
      onMove(p)
   }
}
