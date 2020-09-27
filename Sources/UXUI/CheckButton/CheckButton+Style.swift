import Cocoa
/**
 * Typealias
 */
extension CheckBox {
   public struct Styles {
      let active: CheckBox.Style
      let inActive: CheckBox.Style
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
extension CheckBox.Style {
   public static let `default`: CheckBox.Style = .init(backgroundColor: .white, borderColor: .black, isRounded: true)
   public static let alternate: CheckBox.Style = .init(backgroundColor: .black, borderColor: .white, isRounded: true)
   /**
    * button style getter
    */
   var buttonStyle: Button.Style {
      .init(backgroundColor: self.backgroundColor, borderColor: self.borderColor, borderWidth: 1, isRounded: self.isRounded)
   }
}
/**
 * active / inActive
 */
extension CheckBox.Styles {
   public static let `default`: CheckBox.Styles = .init(active: .alternate, inActive: .default)
}
