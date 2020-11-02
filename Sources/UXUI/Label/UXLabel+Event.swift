import Cocoa
/**
 * Event
 */
extension UXLabel /*NSTextFieldDelegate*/ {
   override open func textDidChange(_ notification: Notification) {
      super.textDidChange(notification)
      onTextFieldChange() // Perform search action on every Text change
   }
}
