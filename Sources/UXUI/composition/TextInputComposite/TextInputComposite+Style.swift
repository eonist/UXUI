import Cocoa
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
   public static let `default`: TextInputComposite.Style = {
      let defaultStyle: UXLabel.Style = .default
      let input: UXLabel.Style = .init(textColor: defaultStyle.textColor, font: defaultStyle.font, textAlignment: defaultStyle.textAlignment, centerVertically: defaultStyle.centerVertically, backgroundColor: Theme.Background.secondary, isBordered: defaultStyle.isBordered)
      return .init(label: .default, input: input)
   }()
}
