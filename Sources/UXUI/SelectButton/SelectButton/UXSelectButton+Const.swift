import Foundation
/**
 * Const
 * - Fixme: ⚠️️ move into .Style subclass?
 */
extension UXSelectButton {
   public static let defaultStyles: Styles = (active: UXSelectButton.alternate, inActive: UXButton.Style.default)
   /**
    * Used for selected / non selected state
    * - Fixme: ⚠️️ move into selected button instead
    */
   public static let alternate: UXButton.Style = .init(backgroundColor: .lightGray, borderColor: .clear, borderWidth: 0, isRounded: false, cornerRadius: 4)
}
