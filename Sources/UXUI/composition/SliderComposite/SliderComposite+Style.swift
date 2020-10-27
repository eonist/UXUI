import Foundation
/**
 * Style
 */
extension SliderComposite {
   public struct Style {
      let label: UXLabel.Style
      let slider: UXSlider.Style
   }
}
extension SliderComposite.Style {
   public static let `default`: SliderComposite.Style = .init(label: .default, slider: .default)
}
