import Foundation
/**
 * Style
 */
extension SliderComponent {
   public struct Style {
      let label: UXLabel.Style
      let slider: Slider.Style
   }
}
extension SliderComponent.Style {
   public static let `default`: SliderComponent.Style = .init(label: .default, slider: .default)
}
