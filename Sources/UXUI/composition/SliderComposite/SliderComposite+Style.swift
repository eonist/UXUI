import Foundation
/**
 * Style
 */
extension SliderComposite {
   public struct Style {
      public let label: UXLabel.Style
      public let slider: UXSlider.Style
   }
}
extension SliderComposite.Style {
   public static let `default`: SliderComposite.Style = .init(label: .default, slider: .volumSliderStyle)
}
