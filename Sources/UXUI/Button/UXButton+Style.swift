import Cocoa
/**
 * Type
 */
extension UXButton {
   /**
    * Style
    */
   public struct Style {
      var backgroundColor: NSColor // Color of the background
      let borderColor: NSColor // Color of the border
      let borderWidth: CGFloat // Thickness of the border
      let isRounded: Bool // Rounded corners
   }
}
/**
 * Default styles
 */
extension UXButton.Style {
   public static let `default`: UXButton.Style = .init(backgroundColor: .white, borderColor: .black, borderWidth: 1, isRounded: false)
   public static let alternate: UXButton.Style = .init(backgroundColor: .black, borderColor: .white, borderWidth: 1, isRounded: false)
}
