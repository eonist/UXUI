import Foundation
/**
 * interaction
 */
extension CheckBox {
   /**
    * onTapUpInside
    */
   override open func onUpInside() {
      super.onUpInside()
      selected.toggle()
   }
}
