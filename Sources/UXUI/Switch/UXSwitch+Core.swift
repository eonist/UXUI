import Foundation
import QuartzCore
import Spatial
import Cocoa

extension UXSwitch {
   /**
    * Change foreground
    * - Fixme: ⚠️️ seems a bit hacky, maybe make it better?
    */
   func toggleForegroundPosition() {
      let alignment: Alignment = selected ? .topRight : .topLeft
      let offset: CGPoint = {
         let selectedOffset: CGPoint = .init(x: -self.switchStyle.foregroundPadding.width / 2, y: self.switchStyle.foregroundPadding.height / 2)
         let unSelectedOffset: CGPoint = .init(x: self.switchStyle.foregroundPadding.width / 2, y: self.switchStyle.foregroundPadding.height / 2)
         return selected ? selectedOffset : unSelectedOffset
      }()
      if let anchor = foreground.anchor { NSLayoutConstraint.deactivate([anchor.x, anchor.y]) }
//      if let size = foreground.size { NSLayoutConstraint.deactivate([size.w, size.h]) }
      foreground.applyAnchor(to: self, align: alignment, alignTo: alignment, offset: offset)
//      foreground.applyAnchorAndSize(to: self, align: alignment, alignTo: alignment, offset: offset)
   }
}
