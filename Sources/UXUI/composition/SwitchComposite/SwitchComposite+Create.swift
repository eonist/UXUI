import Foundation
import With
import Spatial

extension SwitchComposite {
   /**
    * Creates the TextField
    */
   func createLabel() -> UXLabel {
      with(.init(text: self.text, style: self.style.label)) {
         $0.textAlignment = .left
         $0.centerVertically()
         self.addSubview($0)
         $0.size(to: self, axis: .ver, toAxis: .ver)
         $0.anchor(to: self)
         $0.anchor(to: self.switcher, align: .topRight, alignTo: .topLeft)
      }
   }
   /**
    * Creates the Switch
    */
   func createSwitch() -> UXSwitch {
      with(.init(isSelected: self.selected)) {
         self.addSubview($0)
         $0.anchor(to: self, align: .topRight, alignTo: .topRight)
         $0.size(to: self, axis: .ver, toAxis: .ver)
         $0.size(to: self, axis: .hor, toAxis: .ver, multiplier: 1.5)
      }
   }
}
