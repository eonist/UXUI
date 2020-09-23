import Foundation
/**
 * Interaction
 */
extension NSSwitch {
   /**
    * onTapUpInside
    */
   override open func onUpInside() {
      selected.toggle() // we toggle the bool, before we call the call-back
      super.onUpInside()
   }
}
