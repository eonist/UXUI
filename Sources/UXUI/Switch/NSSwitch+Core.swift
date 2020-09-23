import Foundation
import QuartzCore
import Spatial
import Cocoa

extension NSSwitch {
   /**
    * Change foreground
    */
   func toggleForegroundPosition() {
      // Swift.print("toggleForeground")
      let alignment: Alignment = selected ? .topRight : .topLeft
      let offset: CGPoint = selected ? .init(x: -4, y: 4) : .init(x: 4, y: 4)
      // Swift.print("alignment:  \(alignment)")
      if let anchor = foreground.anchor { NSLayoutConstraint.deactivate([anchor.x, anchor.y]) }
      foreground.applyAnchor(to: self, align: alignment, alignTo: alignment, offset: offset)
   }
}
