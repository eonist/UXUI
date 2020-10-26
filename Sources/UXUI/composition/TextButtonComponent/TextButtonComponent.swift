import Foundation
/**
 * A label and a text button
 */
open class TextButtonComponent: UXView {
   lazy var label: UXLabel = createLabel()
   public lazy var textButton: UXTextButton = createTextButton()
   let labelText: String
   let buttonText: String
   let style: Style
   /**
    * Initiate
    */
   public init(labelText: String = "Label", buttonText: String = "TextButton", style: Style = .default) {
      self.labelText = labelText
      self.buttonText = buttonText
      self.style = style
      super.init(frame: .zero)
      _ = textButton
      _ = label
   }
}
