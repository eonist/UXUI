import Cocoa
import Spatial
import QuartzCore

public class SwitchForeground: UXGraphicView, ConstraintKind {
   /**
    * - Abstract: Anchor and size stores the autolayout-constraints
    * - Note: We have to store the constraints because we animate them
    */
   public var anchor: (x: NSLayoutConstraint, y: NSLayoutConstraint)?
//   public var size: (w: NSLayoutConstraint, h: NSLayoutConstraint)?
}
/**
 * Core
 */
extension SwitchForeground {
   /**
    * - Note: This is the only place to get frame.height consistently (when you use either AutoLayout or CGRect based layout)
    * - Fixme: ⚠️️ Maybe make this a style property, isRound etc? or corner radius
    */
   override open func layout() {
      super.layout()
      self.layer?.cornerRadius = self.frame.size.height / 2
   }
   /**
    * - Fixme: ⚠️️ why return nil? to let background be the clicktarget?
    */
   override public func hitTest(_ point: CGPoint) -> View? {
      nil
   }
}
