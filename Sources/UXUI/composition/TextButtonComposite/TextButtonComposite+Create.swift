import Cocoa
import With
import Spatial
/**
 * Create
 * - Fixme: ⚠️️ look into that ruler/guide code from the ios legacy project (stretch goal)
 * - Fixme: ⚠️️ use spatial code from TextInput
 */
extension TextButtonComposite {
   /**
    * TextField
    */
   func createLabel() -> UXLabel {
      with(.init(style: style.label)) {
         $0.text = labelText
         $0.textAlignment = .left
         $0.centerVertically()
         self.addSubview($0)
         $0.anchorAndSize(to: self, multiplier: .init(width: 0.5, height: 1), offset: .zero, sizeOffset: .zero)
      }
   }
   /**
    * CheckBox
    */
   func createTextButton() -> UXTextButton {
      with(.init(text: buttonText, style: style.textButton)) {
         self.addSubview($0)
//         $0.anchorAndSize(to: $0, align: .topLeft, alignTo: .topLeft, multiplier: .init(width: 0.5, height: 1))
//         $0.anchorAndSize(to: self, height: 44, align: .centerCenter, alignTo: .centerCenter, sizeOffset: .init(width: -80, height: 0))
         $0.anchorAndSize(to: self, align: .topRight, alignTo: .topRight, multiplier: .init(width: 0.5, height: 1))
         $0.upInsideCallBack = { Swift.print("tapUpInsideCallBack") }
      }
   }
}
