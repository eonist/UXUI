import Cocoa
/**
 * Typealias
 */
extension CheckButton {
   public struct Styles {
      let active: CheckButton.Style
      let inActive: CheckButton.Style
   }
   public struct Style {
      let backgroundColor: NSColor
      let borderColor: NSColor
      let isRounded: Bool
   }
}
extension CheckButton.Style {
   public static let `default`: CheckButton.Style = .init(backgroundColor: .white, borderColor: .black, isRounded: true)
   public static let alternate: CheckButton.Style = .init(backgroundColor: .black, borderColor: .white, isRounded: true)
}
/**
 * active / inActive
 */
extension CheckButton.Styles {
   public static let `default`: CheckButton.Styles = .init(active: .alternate, inActive: .default)
}
