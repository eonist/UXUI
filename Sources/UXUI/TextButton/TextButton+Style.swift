import Cocoa
import QuartzCore
/**
 * Typealias
 */
extension TextButton {
   /**
    * - Fixme: ⚠️️ Rename to Style?
    */
   public struct Style {
      let button: Button.Style
      let label: NSLabel.Style
   }
}
/**
 * Const
 */
extension TextButton.Style {
   public static let `default`: TextButton.Style = .init(button: .default, label: .default)
   public static let alternate: TextButton.Style = .init(button: Button.Style.alternate, label: UXLabel.Style.alternate)
}
