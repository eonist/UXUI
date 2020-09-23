import Foundation
import QuartzCore
/**
 * TextButton is a Button with a Label in the center
 */
open class TextButton: Button {
   public lazy var textLabel: NSLabel = createTextLabel()
   var textButtonStyle: TextButton.Style {
      didSet {
         super.style = textButtonStyle.button
         textLabel.setStyle(style: textButtonStyle.label)//textColor = textButtonStyle.label.textColor
      }
   }
   internal var text: String // Text
   /**
    * - Parameters:
    *   - text: The initial text
    *   - style: The initial TextButton style
    *   - frame: The initial size and position
    */
   public init(text: String = "Default", style: TextButton.Style = .default, frame: CGRect = .zero) {
      self.text = text
      self.textButtonStyle = style
      super.init(style: style.button, frame: frame)
      _ = textLabel
      _ = { self.textButtonStyle = self.textButtonStyle }() // Updates style, a trick to update didSet inside init
   }
}
