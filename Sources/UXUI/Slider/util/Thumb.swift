import Cocoa
import Spatial
/**
 * Could we use UXButton?
 */
open class Thumb: InteractiveView {
   /**
    * Mouse dragged
    */
   override open func mouseDragged(with event: NSEvent) {
      let p: CGPoint = self.superview!.convert(event.locationInWindow, from: nil)
      onMove(p)
   }
}
