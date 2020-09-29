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
   public static let `default`: UXTextButton.Style = .init(button: .default, label: .default)
   public static let alternate: UXTextButton.Style = .init(button: UXButton.Style.alternate, label: UXLabel.Style.alternate)
}
