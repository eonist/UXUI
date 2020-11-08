import Foundation
import With
import Spatial

extension SliderComposite {
   /**
    * TextField
    */
   func createLabel() -> UXLabel {
      with(.init(text: self.text, style: SliderComposite.Style.default.label)) {
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
    * Slider (VolumeSlider)
    */
   func createSlider() -> VolumeSlider {
      with(.init(axis: .hor, buttonSide: 32, progress: 0.5, style: SliderComposite.Style.default.slider)) {
         self.addSubview($0)
//         $0.anchorAndSize(to: self, height: 44, align: .topCenter, alignTo: .topCenter, offset: .init(x: 0, y: 44), sizeOffset: .init(width: -88, height: 0))
         $0.anchorAndSize(to: self, align: .topRight, alignTo: .topRight, multiplier: .init(width: 0.5, height: 1))
         $0.onChange = { progress in
            Swift.print("progress:  \(progress)")
         }
      }
   }
}
