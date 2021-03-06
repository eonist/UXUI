import Foundation
/**
 * A label and a text button
 *  - Fixme: ⚠️️ rename to ....Composite?
 */
open class TextButtonComposite: UXView {
   lazy var label: UXLabel = createLabel()
   public lazy var textButton: UXTextButton = createTextButton()
   let labelText: String
   let buttonText: String
   let style: Style
   /**
    * Initiate
    */
   public init(labelText: String = "TextButton", buttonText: String = "Button", style: Style = .default) {
      self.labelText = labelText
      self.buttonText = buttonText
      self.style = style
      super.init(frame: .zero)
      _ = textButton
      _ = label
   }
}
