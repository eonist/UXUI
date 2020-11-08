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
      public init(active: UXTextButton.Style, inActive: UXTextButton.Style) {
         self.active = active
         self.inActive = inActive
      }
   }
}
/**
 * Const
 * - Fixme: ⚠️️ move into .Style subclass?
 */
extension UXSelectTextButton.Styles {
   public static let defaultStyles: UXSelectTextButton.Styles = .init(active: .alternate, inActive: .default)
   /**
    * Similar to iOS style
    */
   public static let toggleStyles: UXSelectTextButton.Styles = {
      let buttonStyle: UXButton.Style = .init(backgroundColor: .clear, borderColor: .clear, borderWidth: 0, isRounded: false)
      let labelStyle: UXLabel.Style = .init(textColor: .systemBlue, font: .labelFont(ofSize: 18), textAlignment: .left, centerVertically: true, backgroundColor: .clear, isBordered: true)
      let selected: UXTextButton.Style = .init(button: buttonStyle, label: labelStyle)
      let unSelected: UXTextButton.Style = .init(button: buttonStyle, label: labelStyle)
      return .init(active: selected, inActive: unSelected)
   }()
}
