import Foundation
/**
 * Interaction
 */
extension UXSwitch {
   /**
    * onTapUpInside
    */
   override open func onUpInside() {
      selected.toggle() // we toggle the bool, before we call the call-back
      super.onUpInside()
   }
}
