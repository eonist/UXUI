import Foundation
import With
import Spatial
import Foundation
/**
 * Create
 */
extension TextButton {
   /**
    * Create text label
    */
   open func createTextLabel() -> NSLabel {
      with(.init()) {
         addSubview($0)
         $0.text = self.text
         $0.anchorAndSize(to: self)
         $0.isEnabled = false // Disables interactivity, so that upInside callback works in macOS
      }
   }
}
