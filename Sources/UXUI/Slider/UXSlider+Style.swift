import Cocoa

extension UXSlider {
   public struct Style {
      public let thumbColor: NSColor // the dragable element
      public let trackColor: NSColor // the background (also detects movment)
   }
}
extension UXSlider.Style {
   public static let `default`: UXSlider.Style = .init(thumbColor: .lightGray, trackColor: .gray)
}
