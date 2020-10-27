import Cocoa
import Spatial
import With
/**
 * Create
 */
extension UXSwitch {
   /**
    * SwitchForeground
    * - Note: the background is in the button
    */
   func createForeground() -> SwitchForeground {
      with(.init(backgroundColor: switchStyle.foregroundColor, frame: .zero)) {
         addSubview($0)
         $0.activateSize { view in
            let w: NSLayoutConstraint = Constraint.length(view, to: self, viewAxis: .hor, toAxis: .ver, offset: -switchStyle.foregroundPadding.width)
            let h: NSLayoutConstraint = Constraint.length(view, to: self, viewAxis: .ver, toAxis: .ver, offset: -switchStyle.foregroundPadding.height)
            return (w, h)
         }
      }
   }
}
// let size: CGSize = .init(width: self.frame.size.width - 8, height: self.frame.size.height - 8)
// self.caLayer?.position = .init(x: self.frame.origin.x + 4, y: self.frame.origin.y + 4)
