import Foundation
/**
 * interaction
 */
extension UXCheckBox {
   /**
    * onTapUpInside
    */
   override open func onUpInside() {
      super.onUpInside()
      selected.toggle()
   }
}
