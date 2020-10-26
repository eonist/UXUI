import Foundation
/**
 * Style
 */
extension UXTextInput {
   public struct Style {
      let label: UXLabel.Style
      let input: UXLabel.Style
   }
}
/**
 * Style const
 */
extension UXTextInput.Style {
   public static let `default`: UXTextInput.Style = .init(label: .default, input: .default)
}
