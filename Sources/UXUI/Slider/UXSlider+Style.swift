import Cocoa

extension UXSlider {
   public struct Style {
      public let thumbColor: NSColor
      public let trackColor: NSColor
   }
}
extension UXSlider.Style {
   public static let `default`: UXSlider.Style = .init(thumbColor: NSColor.black, trackColor: NSColor.gray)
}
