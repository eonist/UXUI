import Foundation
import With
import Spatial
/**
 * Create
 */
extension UXTextButton {
   /**
    * Create text label
    */
   open func createTextLabel() -> UXLabel {
      with(.init(text: self.text)) {
         addSubview($0)
         $0.anchorAndSize(to: self)
         $0.isEnabled = false // Disables interactivity, so that upInside callback works in macOS
      }
   }
}
