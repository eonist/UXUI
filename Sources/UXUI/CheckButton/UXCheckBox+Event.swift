import Foundation
/**
 * interaction
 */
extension UXCheckBox {
   /**
    * onTapUpInside
    */
   override open func onUpInside() {
      selected.toggle()
      super.onUpInside()
   }
}
