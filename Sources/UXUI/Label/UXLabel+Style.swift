import Cocoa
/**
 * Style
 */
extension UXLabel {
   /**
    * Fixme: ⚠️️ add border color?
    * - Important: ⚠️️ make sure isBordered is true, or else text jumps when it becomes editable, super random, but no easy way around
    */
   public struct Style {
      public let textColor: NSColor
      public let font: NSFont
      public let textAlignment: NSTextAlignment
      public let centerVertically: Bool
      public let backgroundColor: NSColor
      public let isBordered: Bool // ⚠️️ this avoids text jumping when editable is true, doesnt show border
      public init(textColor: NSColor, font: NSFont, textAlignment: NSTextAlignment = .left, centerVertically: Bool = true, backgroundColor: NSColor = .clear, isBordered: Bool = false) {
         self.textColor = textColor
         self.font = font
         self.textAlignment = textAlignment
         self.centerVertically = centerVertically
         self.backgroundColor = backgroundColor
         self.isBordered = isBordered
      }
   }
}
/**
 * Styles
 */
extension UXLabel.Style {
   public static var `default`: UXLabel.Style {
      .init(textColor: Theme.Text.title, font: .systemFont(ofSize: 18), textAlignment: .left, centerVertically: true, backgroundColor: .clear, isBordered: true) // is bordered is true, is imp for edit mode to work etc. 
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
      // - Fixme: ⚠️️ should only be called, if style.centerVertically is true
      centerVertically()
   }
}
/**
 * Init
 */
extension UXLabel {
   /**
    * Init with style
    * - Important: ⚠️️ you have to set some initial text for this to work, one empty character like: " " will suffice
    */
   public convenience init(text: String, style: UXLabel.Style = .default) {
      self.init(frame: .zero)
      self.style = style
      self.text = text
      self.isBordered = style.isBordered // this avoids text jumping when editable is true
      setStyle(style: style)
   }
}
