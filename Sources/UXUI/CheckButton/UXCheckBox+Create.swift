import Cocoa
import Spatial
import With
/**
 * Create
 */
extension UXCheckBox {
   /**
    * SwitchForeground
    * - Note: the background is in the button
    */
   func createForeground() -> UXCheckBox.Foreground {
      with(.init()) {
         addSubview($0)
         $0.layer?.backgroundColor = checkButtonStyle.foregroundColor.cgColor
         $0.anchorAndSize(to: self, align: .topLeft, alignTo: .topLeft, offset: .init(x: checkButtonStyle.foregroundPadding.width / 2, y: checkButtonStyle.foregroundPadding.height / 2), sizeOffset: .init(width: -checkButtonStyle.foregroundPadding.width, height: -checkButtonStyle.foregroundPadding.height))
 
         // -checkButtonStyle.foregroundPadding.width
      }
   }
}
