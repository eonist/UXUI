import Cocoa
/**
 * Event
 */
extension UXLabel /*NSTextFieldDelegate*/ {
   /**
    * - Note: there is also: textShouldBeginEditing, textShouldEndEditing, textDidBeginEditing, textDidEndEditing
    */
   override open func textDidChange(_ notification: Notification) {
      super.textDidChange(notification)
      onTextFieldChange() // Perform search action on every Text change
   }
}
