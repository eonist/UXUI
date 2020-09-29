import Cocoa
import Spatial
// 🏀
// finish cleanup
//add logo
/**
 * - Fixme: ⚠️️ Probably rename to onMoveCallback, or move, or moveCallBack et
 */
open class InteractiveView: UXView, ConstraintKind {
   /**
    * - Abstract: Anchor and size stores the autolayout-constraints
    * - Note: We have to store the constraints because we animate them
    */
   public var anchor: (x: NSLayoutConstraint, y: NSLayoutConstraint)?
   public var size: (w: NSLayoutConstraint, h: NSLayoutConstraint)?
   // Callbacks
   public var onDown: CallBack = { _ in }
   public var onUp: CallBack = { _ in }
   public var onMove: CallBack = { _ in } // Fixme: ⚠️️ rename to onDrag
}
/**
 * Type
 */
extension InteractiveView {
   public typealias CallBack = (_ point: CGPoint) -> Void
}
/**
 * Event
 */
extension InteractiveView {
   /**
    * Mouse down
    */
   override open func mouseDown(with event: NSEvent) {
      let p: CGPoint = self.convert(event.locationInWindow, from: nil)
      onDown(p)
   }
   /**
    * Mouse up
    */
   override open func mouseUp(with event: NSEvent) {
      let p: CGPoint = self.convert(event.locationInWindow, from: nil)
      onUp(p)
   }
   /**
    * Mouse dragged
    */
   override open func mouseDragged(with event: NSEvent) {
      // fixme: ⚠️️
      // might have to do: (since your getting local position not parentPOs i the current code)
      //let pos: CGPoint = self.superView!.convert((window?.mouseLocationOutsideOfEventStream)!,from:nil)
      let p: CGPoint = self.convert(event.locationInWindow, from: nil)
      onMove(p)
   }
}
