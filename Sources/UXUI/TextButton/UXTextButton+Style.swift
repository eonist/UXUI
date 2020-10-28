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
      let style = UXLabel.Style.default
      let lableStyle: UXLabel.Style = .init(textColor: style.textColor, font: style.font, textAlignment: .center, centerVertically: style.centerVertically, backgroundColor: style.backgroundColor, isBordered: style.isBordered)
      return.init(button: .default, label: lableStyle)
   }()
   public static let alternate: UXTextButton.Style = .init(button: UXButton.Style.alternate, label: UXLabel.Style.alternate)
}
