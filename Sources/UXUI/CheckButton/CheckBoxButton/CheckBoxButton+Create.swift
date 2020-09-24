import Foundation
import With
import Spatial

extension CheckBoxButton {
   /**
    * TextField
    */
   func createTextField() -> NSLabel {
      with(.init()) {
         $0.text = self.text
         $0.textColor = CheckBoxButton.Style.default.textColor
         $0.textAlignment = .left
         $0.font = CheckBoxButton.Style.default.font
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
   func createCheckBox() -> CheckButton {
      with(.init(selected: self.selected, styles: self.checkBoxStyles, frame: .zero)) { // ToggleButton.init(isChecked:self.isChecked,texts:texts)
         self.addSubview($0)
         $0.anchor(to: self, align: .topRight, alignTo: .topRight)
         $0.size(to: self, axis: .ver, toAxis: .ver)
         $0.size(to: $0, axis: .hor, toAxis: .ver)
      }
   }
}
