import Foundation
/**
 * Interaction
 */
extension UXSelectTextButton {
   /**
    * onTapUpInside
    */
   override open func onUpInside() {
      Swift.print("onUpInside")
      selected.toggle() // toggle selected state
      super.onUpInside()
   }
}
