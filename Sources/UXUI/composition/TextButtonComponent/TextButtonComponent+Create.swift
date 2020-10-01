import Cocoa
import With
import Spatial
/**
 * Create
 */
extension TextButtonComponent {
   /**
    * TextField
    */
   func createLabel() -> UXLabel {
      with(.init(style: style.label)) {
         $0.text = labelText
         $0.textAlignment = .left
         $0.centerVertically()
         self.addSubview($0)
         $0.anchorAndSize(to: self, multiplier: .init(width: 0.5, height: 1), offset: .init(x: 0, y: 0), sizeOffset: .init(width: 0, height: 0))
      }
   }
   /**
    * CheckBox
    */
   func createTextButton() -> UXTextButton {
      with(.init(text: buttonText, style: style.button)) {
         self.addSubview($0)
         $0.anchorAndSize(to: $0, align: .topLeft, alignTo: .topLeft, multiplier: .init(width: 0.5, height: 1))
         $0.anchorAndSize(to: self, height: 44, align: .centerCenter, alignTo: .centerCenter, sizeOffset: .init(width: -80, height: 0))
         $0.upInsideCallBack = { Swift.print("tapUpInsideCallBack") }
      }
   }
}
// 🏀 use spatial code from TextInput
   // look into that ruler/guide code from the ios legacy project