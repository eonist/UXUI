import Foundation
/**
 * Style
 */
extension UXSelectTextButton {
   /**
    * - Fixme: ⚠️️ rename to selected, unSelected
    */
   public struct Styles {
      let active: UXTextButton.Style
      let inActive: UXTextButton.Style
   }
}
/**
 * Const
 * - Fixme: ⚠️️ move into .Style subclass?
 */
extension UXSelectTextButton.Styles {
   public static let defaultStyles: UXSelectTextButton.Styles = .init(active: .alternate, inActive: .default)
   public static let toggleStyles: UXSelectTextButton.Styles = {
      // 🏀 continue here, make it similar to iOS toggle label
      let selected: UXTextButton.Style = .init(button: .default, label: .default)
      let unSelected: UXTextButton.Style = .init(button: .default, label: .default)
      return .init(active: .alternate, inActive: .default)
   }()
}
/**
 * Alternate style for TextButton
 */
extension UXTextButton.Style {
   /**
    * Used for selected / non selected state
    */
   public static let alternate: UXTextButton.Style = .init(button: UXSelectButton.alternate, label: UXLabel.Style.alternate)
}
