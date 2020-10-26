import Foundation
/**
 * Style
 */
extension TextButtonComponent {
   public struct Style {
      let label: UXLabel.Style
      let textButton: UXTextButton.Style
   }
}
extension TextButtonComponent.Style {
   public static let `default`: TextButtonComponent.Style = .init(label: .default, textButton: .default)
}
