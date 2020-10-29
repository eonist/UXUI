import Cocoa
import QuartzCore
/**
 * Typealias
 */
extension UXTextButton {
   /**
    * Label and button style
    */
   public struct Style {
      let button: UXButton.Style
      let label: UXLabel.Style
   }
}
/**
 * Const
 */
extension UXTextButton.Style {
   public static let `default`: UXTextButton.Style = {
      let labelStyle: UXLabel.Style = .default
      let lableStyle: UXLabel.Style = .init(textColor: labelStyle.textColor, font: labelStyle.font, textAlignment: .center, centerVertically: labelStyle.centerVertically, backgroundColor: labelStyle.backgroundColor, isBordered: labelStyle.isBordered)
      return.init(button: .default, label: lableStyle)
   }()
}
