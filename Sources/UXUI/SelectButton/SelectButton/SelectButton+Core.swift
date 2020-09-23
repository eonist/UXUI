import Foundation
/**
 * Core
 */
extension SelectButton {
   /**
    * - Note: The drawLayout method is the common method for ios and mac to consistently get the frame when using autolayout
    * - Fixme: ⚠️️ This is not needed as you can set it in style
    */
   override open func layout() {
      super.layout()
      self.layer?.cornerRadius = self.frame.height / 2
   }
}
