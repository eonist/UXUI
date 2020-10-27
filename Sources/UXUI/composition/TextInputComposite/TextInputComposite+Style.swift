import Foundation
/**
 * Style
 */
extension TextInputComposite {
   public struct Style {
      let label: UXLabel.Style
      let input: UXLabel.Style
   }
}
/**
 * Style const
 */
extension TextInputComposite.Style {
   public static let `default`: TextInputComposite.Style = .init(label: .default, input: .default)
}
