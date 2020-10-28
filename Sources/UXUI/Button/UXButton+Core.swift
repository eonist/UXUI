import Cocoa
import With

extension UXButton {
   /**
    * - Note: This is the only place to get frame.height consistently (when you use either AutoLayout or CGRect based layout)
    * - Note: Universal method for getting frame consistently acrross ios and macos when using autolayout
    * - Fixme: ⚠️️ Add support for custom cornerRadius
    */
   override open func layout() {
      super.layout()
      with(self.layer) {
         $0?.cornerRadius = style.isRounded ? frame.height / style.cornerRadius : self.layer?.cornerRadius ?? 0
         $0?.borderColor = style.borderColor.cgColor
         $0?.backgroundColor = style.backgroundColor.cgColor
         $0?.borderWidth = style.borderWidth
      }
   }
}
