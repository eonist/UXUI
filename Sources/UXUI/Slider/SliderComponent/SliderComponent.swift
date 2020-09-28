import Foundation
import With

open class SliderComponent: UXView {
   lazy var label: UXLabel = createLabel()
   lazy var slider: VolumeSlider = createSlider()
   let text: String
   let style: Style
   init(text: String = "Slider", style: Style = .default) {
      self.text = text
      self.style = style
      super.init(frame: .zero)
      _ = label
      _ = slider
   }
}
