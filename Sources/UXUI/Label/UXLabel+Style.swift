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
      public let isBordered: Bool // this avoids text jumping when editable is true, doesnt show border
   }
}
/**
 * Styles
 */
extension UXLabel.Style {
   public static var `default`: UXLabel.Style {
      .init(textColor: Theme.Text.title, font: .systemFont(ofSize: 18), textAlignment: .left, centerVertically: true, backgroundColor: .clear, isBordered: true)
   }
   /**
    * - Fixme: ⚠️️ move somewhere else?
    */
   public static var alternate: UXLabel.Style = .default // ⚠️️ same as default?
}
/**
 * Setter
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
//      self.layer?.borderColor = NSColor.green.cgColor
//      self.backgroundColor = .green//style.backgroundColor
      self.textColor = style.textColor
      self.textAlignment = style.textAlignment
      centerVertically()
   }
}
/**
 * Init
 */
extension UXLabel {
   /**
    * Init with style
    */
   public convenience init(text: String, style: UXLabel.Style = .default) {
      self.init(frame: .zero)
      self.style = style
      self.text = text
      self.isBordered = style.isBordered // this avoids text jumping when editable is true
      setStyle(style: style)
   }
}
