import Foundation
/**
 * Interaction
 */
extension UXSelectButton {
   /**
    * onTapUpInside
    */
   override open func onUpInside() {
      super.onUpInside()
      selected.toggle()
   }
}
