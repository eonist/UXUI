import Cocoa
/**
 * Core
 */
extension UXLabel {
   /**
    * Sets the alignment of the label
    */
   open var textAlignment: NSTextAlignment {
      get { self.alignment }
      set { self.alignment = newValue }
   }
   /**
    * Sets the text of the label
    * - Note: This doesn't have to be optional, but Label.text in ios is optional so to make the call consistent we make it optional
    */
   open var text: String? {
      get { self.stringValue }
      set { self.stringValue = newValue ?? self.stringValue }
   }
   override open func hitTest(_ point: NSPoint) -> NSView? {
      isEnabled ?  super.hitTest(point) : nil
   }
   /**
    * - Fixme: ⚠️️ This is not optimal, there could be a better way to do this, maybe look into: baselineOffset attributed string etc
    * - Fixme: ⚠️️ add support for background color
    */
   public func centerVertically() {
      let textHeight = self.attributedStringValue.size().height
      let font = self.font
      let isBordered = self.isBordered
      let textAlignment = self.textAlignment
      let textColor = self.textColor
      let isEnabled = self.isEnabled
      let focusRing = self.focusRingType
      self.cell = VerticallyAlignedTextFieldCell(textHeight: textHeight, textCell: self.stringValue)
      self.font = font // ⚠️️ We have to re-apply these after cell is set
      self.isBordered = isBordered // this avoids text jumping when editable is true
      self.textColor = textColor
      self.isEnabled = isEnabled
      self.textAlignment = textAlignment
      self.focusRingType = focusRing
   }
   /**
    * Need to get rid of border in the cell (border is hard to get rid of otherwise)
    * - Note: called when macOS apperance changes
    */
   override open func draw(_ dirtyRect: NSRect) {
//      Swift.print("UXLabel.draw")
      super.cell?.drawInterior(withFrame: dirtyRect, in: self)
      self.layer?.backgroundColor = self.style.backgroundColor.cgColor// NSColor.green.cgColor// self.backgroundColor?.cgColor
   }
}
