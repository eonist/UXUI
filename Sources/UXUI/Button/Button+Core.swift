import Cocoa

extension Button {
   /**
    * - Note: This is the only place to get frame.height consistently (when you use either AutoLayout or CGRect based layout)
    * - Note: Universal method for getting frame consistently acrross ios and macos when using autolayout
    */
   override open func layout() {
      super.layout()
      self.layer?.cornerRadius = style.isRounded ? frame.height / 2 : self.layer?.cornerRadius ?? 0
      self.layer?.borderColor = style.borderColor.cgColor
      self.layer?.backgroundColor = style.backgroundColor.cgColor
      self.layer?.borderWidth = style.borderWidth
   }
}
