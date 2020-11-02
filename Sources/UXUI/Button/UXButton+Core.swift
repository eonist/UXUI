import Cocoa
import With

extension UXButton {
   /**
    * - Note: This is the only place to get frame.height consistently (when you use either AutoLayout or CGRect based layout)
    * - Note: Universal method for getting frame consistently acrross ios and macos when using autolayout
    * - Note: called when macOS apperance changes
    * - Fixme: ⚠️️ Add support for custom cornerRadius
    */
   override open func layout() {
      super.layout()
      with(self.layer) {
         $0?.cornerRadius = { // - Fixme: ⚠️️ make this simpler later
            if style.isRounded {
               return style.cornerRadius == 0 ? self.frame.height / 2 : self.frame.height / style.cornerRadius
            } else {
               return self.layer?.cornerRadius ?? 0
            }
         }()
         $0?.borderColor = style.borderColor.cgColor
         $0?.backgroundColor = style.backgroundColor.cgColor
         $0?.borderWidth = style.borderWidth
      }
   }
}
