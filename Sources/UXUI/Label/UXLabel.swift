import Cocoa
/**
 * - Note: - use self.textColor to set text color
 * - Important: ⚠️️ NSTextField has unusual high resistance and hugging priority, so we need to normalize them to be able to resize window etc
 * - Note: Supports center-aligned text
 * - Note: Same functionality as UILabel
 * - Note: Supports AutoLayout
 */
open class UXLabel: NSTextField {
   /**
    * - Parameter frameRect: size of label if not using auto-layout
    */
   override init(frame frameRect: NSRect = .zero) {
      super.init(frame: frameRect)
      self.isBezeled = false
      self.drawsBackground = false
      self.isEditable = false
      self.isSelectable = false
   }
   /**
    * Boilerplate
    */
   public required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
