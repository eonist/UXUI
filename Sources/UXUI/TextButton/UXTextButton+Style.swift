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
      let lblStyle: UXLabel.Style = .init(textColor: labelStyle.textColor, font: labelStyle.font, textAlignment: .center, centerVertically: labelStyle.centerVertically, backgroundColor: labelStyle.backgroundColor, isBordered: labelStyle.isBordered)
      let buttonStyle: UXButton.Style = .default
      let btnStyle: UXButton.Style = .init(backgroundColor: buttonStyle.backgroundColor, borderColor: buttonStyle.borderColor, borderWidth: buttonStyle.borderWidth, isRounded: buttonStyle.isRounded, cornerRadius: 4)
      return.init(button: btnStyle, label: lblStyle)
   }()
}
