import Foundation
/**
 * Style
 */
extension TextButtonComposite {
   public struct Style {
      let label: UXLabel.Style
      let textButton: UXTextButton.Style
   }
}
extension TextButtonComposite.Style {
   public static let `default`: TextButtonComposite.Style = .init(label: .default, textButton: .default)
}
