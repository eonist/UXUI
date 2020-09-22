import Cocoa
import Spatial

open class Thumb: InteractiveView {
   /**
    * Mouse dragged
    */
   override open func mouseDragged(with event: NSEvent) {
      let p: CGPoint = self.superview!.convert(event.locationInWindow, from: nil)
      onMove(p)
   }
}
