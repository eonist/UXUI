import Cocoa
import QuartzCore

extension TextInput {
   public struct Style {
      public let backgroundColor: NSColor
      public let primaryTextColor: NSColor
      public let secondaryTextColor: NSColor
      public let borderColor: NSColor
      public let borderWidth: CGFloat
   }
   public static let defaultStyle: Style = .init(backgroundColor: .white, primaryTextColor: .black, secondaryTextColor: .black, borderColor: .black, borderWidth: 1)
}
