import Foundation
/**
 * Style
 */
extension TextButtonComponent {
   public struct Style {
      let label: UXLabel.Style
      let textButton: UXCheckBox.Styles
   }
}
extension TextButtonComponent.Style {
   public static let `default`: TextButtonComponent.Style = .init(label: .default, textButton: .default)
}
