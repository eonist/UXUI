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
      super.onUpInside()
      selected.toggle() // toggle
   }
}
