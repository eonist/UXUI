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
      let foregroundColor: NSColor
      let foregroundPadding: CGSize
//      let borderColor: NSColor
      let isRounded: Bool
      init(foregroundColor: NSColor, backgroundColor: NSColor, isRounded: Bool = true, foregroundPadding: CGSize = .init(width: 12, height: 12)) {
         self.foregroundColor = foregroundColor
         self.backgroundColor = backgroundColor
         self.isRounded = isRounded
         self.foregroundPadding = foregroundPadding
      }
   }
}
/**
 * Getters
 */
extension UXCheckBox.Style {
   public static let active: UXCheckBox.Style = .init(foregroundColor: .darkGray, backgroundColor: .lightGray, isRounded: true)
   public static let inActive: UXCheckBox.Style = .init(foregroundColor: .lightGray, backgroundColor: .darkGray, isRounded: true)
   /**
    * button style getter
    */
   var buttonStyle: UXButton.Style {
      .init(backgroundColor: self.backgroundColor, borderColor: self.foregroundColor, borderWidth: 0, isRounded: self.isRounded)
   }
}
/**
 * active / inActive
 */
extension UXCheckBox.Styles {
   public static let `default`: UXCheckBox.Styles = .init(active: .active, inActive: .inActive)
   // make alternate
}
