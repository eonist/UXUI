import Foundation
/**
 * interaction
 */
extension CheckButton {
   /**
    * onTapUpInside
    */
   override open func onUpInside() {
      super.onUpInside()
      selected.toggle()
   }
}
