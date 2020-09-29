import Cocoa
/**
 * Typealias
 */
extension UXCheckBox {
   public struct Styles {
      let active: UXCheckBox.Style
      let inActive: UXCheckBox.Style
   }
   public struct Style {
      let backgroundColor: NSColor
      let borderColor: NSColor
      let isRounded: Bool
   }
}
/**
 * Getters
 */
extension UXCheckBox.Style {
   public static let `default`: UXCheckBox.Style = .init(backgroundColor: .white, borderColor: .black, isRounded: true)
   public static let alternate: UXCheckBox.Style = .init(backgroundColor: .black, borderColor: .white, isRounded: true)
   /**
    * button style getter
    */
   var buttonStyle: UXButton.Style {
      .init(backgroundColor: self.backgroundColor, borderColor: self.borderColor, borderWidth: 1, isRounded: self.isRounded)
   }
}
/**
 * active / inActive
 */
extension UXCheckBox.Styles {
   public static let `default`: UXCheckBox.Styles = .init(active: .alternate, inActive: .default)
}
