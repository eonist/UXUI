import Foundation
import With
import Spatial

extension TextInputComposite {
   /**
    * label
    */
   func createLabel() -> UXLabel {
      with(.init(text: self.labelText)) {
         $0.textColor = TextInputComposite.Style.default.label.textColor
         $0.font = TextInputComposite.Style.default.label.font
         self.addSubview($0)
         $0.size(to: self, axis: .ver, toAxis: .ver)
         $0.anchor(to: self)
         $0.anchor(to: self.input, align: .topRight, alignTo: .topLeft)
      }
   }
   /**
    * text-input
    */
   func createInputText() -> UXLabel {
      with(.init(text: inputText, style: style.input)) {
         $0.isEditable = true
         addSubview($0)
         $0.anchorAndSize(to: self, align: .topRight, alignTo: .topRight, multiplier: .init(width: 0.5, height: 1))
      }
   }
}
