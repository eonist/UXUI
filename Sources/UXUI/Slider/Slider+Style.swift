import Cocoa

extension Slider {
   public struct Style {
      public let thumbColor: NSColor
      public let trackColor: NSColor
   }
}
extension Slider.Style {
   public static let `default`: Slider.Style = .init(thumbColor: NSColor.black, trackColor: NSColor.gray)
}
