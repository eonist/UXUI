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
      let cornerRadius: CGFloat // divider
      public init(backgroundColor: NSColor, borderColor: NSColor, borderWidth: CGFloat, isRounded: Bool, cornerRadius: CGFloat = 2) {
         self.backgroundColor = backgroundColor
         self.borderColor = borderColor
         self.borderWidth = borderWidth
         self.isRounded = isRounded
         self.cornerRadius = cornerRadius
      }
   }
}
/**
 * Default styles
 */
extension UXButton.Style {
   public static let `default`: UXButton.Style = .init(backgroundColor: .lightGray, borderColor: .clear, borderWidth: 0, isRounded: true, cornerRadius: 4)
   /**
    * - Fixme: ⚠️️ for darkmode?
    */
   public static let alternate: UXButton.Style = .init(backgroundColor: .lightGray, borderColor: .clear, borderWidth: 0, isRounded: false, cornerRadius: 4)
}
