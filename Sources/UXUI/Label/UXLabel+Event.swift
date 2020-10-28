import Foundation
/**
 * Event
 */
extension UXLabel {
   open override func textDidChange(_ notification: Notification) {
      super.textDidChange(notification)
      onTextFieldChange() // Perform search action on every Text change
   }
}
