import Foundation
/**
 * Interaction
 */
extension SelectButton {
   /**
    * onTapUpInside
    */
   override open func onUpInside() {
      super.onUpInside()
      selected.toggle()
   }
}
