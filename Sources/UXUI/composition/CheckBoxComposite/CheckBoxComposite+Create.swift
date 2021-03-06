import Foundation
import With
import Spatial

extension CheckBoxComposite {
   /**
    * TextField
    */
   func createLabel() -> UXLabel {
      with(.init(text: self.text, style: CheckBoxComposite.Style.default.label)) {
         $0.textAlignment = .left
         $0.centerVertically()
         self.addSubview($0)
         $0.size(to: self, axis: .ver, toAxis: .ver)
         $0.anchor(to: self)
         $0.anchor(to: self.checkBox, align: .topRight, alignTo: .topLeft)
      }
   }
   /**
    * CheckBox
    */
   func createCheckBox() -> UXCheckBox {
      with(.init(selected: self.selected, styles: CheckBoxComposite.Style.default.checkBox, frame: .zero)) { // ToggleButton.init(isChecked:self.isChecked,texts:texts)
         self.addSubview($0)
         $0.anchor(to: self, align: .topRight, alignTo: .topRight)
         $0.size(to: self, axis: .ver, toAxis: .ver)
         $0.size(to: $0, axis: .hor, toAxis: .ver)
      }
   }
}
