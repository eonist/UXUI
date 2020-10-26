import Foundation
import With
import Spatial

extension SliderComponent {
   /**
    * TextField
    */
   func createLabel() -> UXLabel {
      with(.init(style: SliderComponent.Style.default.label)) {
         $0.text = self.text
         $0.textAlignment = .left
         $0.centerVertically()
         self.addSubview($0)
         $0.size(to: self, axis: .ver, toAxis: .ver)
//         $0.anchor(to: self)
//         $0.anchor(to: self.slider, align: .topRight, alignTo: .topLeft)
         $0.anchorAndSize(to: self, multiplier: .init(width: 0.5, height: 1), offset: .zero, sizeOffset: .zero)
      }
   }
   /**
    * Slider
    */
   func createSlider() -> VolumeSlider {
      with(.init(axis: .hor, buttonSide: 44, progress: 0.5, style: SliderComponent.Style.default.slider)) {
         self.addSubview($0)
//         $0.anchorAndSize(to: self, height: 44, align: .topCenter, alignTo: .topCenter, offset: .init(x: 0, y: 44), sizeOffset: .init(width: -88, height: 0))
         $0.anchorAndSize(to: self, height: 44, align: .topRight, alignTo: .topRight, multiplier: .init(width: 0.5, height: 1))
         $0.onChange = { progress in
            Swift.print("progress:  \(progress)")
         }
      }
   }
}
