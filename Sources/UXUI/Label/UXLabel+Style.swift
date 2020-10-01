import Cocoa
/**
 * Style
 */
extension UXLabel {
   /**
    * Fixme: ⚠️️ add border color?
    */
   public struct Style {
      public let textColor: NSColor
      public let font: NSFont
      public let textAlignment: NSTextAlignment
      public let centerVertically: Bool
      public let backgroundColor: NSColor
      public let isBordered: Bool
   }
}
extension UXLabel.Style {
   public static var `default`: UXLabel.Style {
      .init(textColor: .black, font: .systemFont(ofSize: 20), textAlignment: .center, centerVertically: true, backgroundColor: .clear, isBordered: false)
   }
   public static var alternate: UXLabel.Style = .default
}
/**
 * Style
 */
extension UXLabel {
   /**
    * set style
    */
   public func setStyle(style: UXLabel.Style) {
      self.drawsBackground = style.backgroundColor != .clear
      self.backgroundColor = style.backgroundColor
      self.font = style.font
      self.isBordered = style.isBordered
      self.textColor = style.textColor
      self.textAlignment = style.textAlignment
      centerVertically()
   }
   /**
    * Init with style
    */
   public convenience init(style: UXLabel.Style = .default) {
      self.init(frame: .zero)
      setStyle(style: style)
   }
}
