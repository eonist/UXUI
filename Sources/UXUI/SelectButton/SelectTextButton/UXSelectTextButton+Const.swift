import Foundation
/**
 * Const
 * - Fixme: ⚠️️ move into .Style subclass?
 */
extension UXSelectTextButton {
   public static let defaultStyles: Styles = (active: UXSelectTextButton.alternate, inActive: UXTextButton.Style.default)
   /**
    * Used for selected / non selected state
    */
   public static let alternate: UXTextButton.Style = .init(button: UXSelectButton.alternate, label: UXLabel.Style.alternate)
}
