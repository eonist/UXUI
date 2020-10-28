import Cocoa
/**
 * Label for macOS
 * - Note: - use self.textColor to set text color
 * - Important: ⚠️️ NSTextField has unusual high resistance and hugging priority, so we need to normalize them to be able to resize window etc
 * - Fixme: ⚠️️ possibly merge into one file
 * - Note: Supports center-aligned text
 * - Note: Same functionality as UILabel
 * - Note: Supports AutoLayout
 * - Fixme: ⚠️️ add placeholder text, paragraph style: https://medium.com/bpxl-craft/styling-nstextfield-a-guide-for-designers-8280da794263
 * - Fixme: ⚠️️ not showing cursor blink
 */
open class UXLabel: NSTextField {
   var style: Style = .default
   var onTextFieldChange: OnTextFieldChange = defaultOnTextFieldChange // callback
   /**
    * - Parameter frameRect: size of label if not using auto-layout
    */
   override init(frame frameRect: NSRect = .zero) {
      super.init(frame: frameRect)
      self.isBezeled = false
      self.drawsBackground = false
      self.isEditable = false
      self.isSelectable = false
      self.focusRingType = .none // removes default glowing border
//      self.layer?.borderWidth = 2;
   }
   /**
    * Boilerplate
    */
   public required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
