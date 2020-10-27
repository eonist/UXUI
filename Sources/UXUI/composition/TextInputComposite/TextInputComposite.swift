import Foundation
import With
import Spatial
/**
 * Label and TextInput
 */
open class TextInputComposite: UXView {
   lazy var label: UXLabel = createLabel() // text lable
   lazy var textInput: UXLabel = createInputText()
   let labelText: String
   let inputText: String
   let style: Style
   /**
    * init
    */
   public init(label: String = "Label", input: String = "Input", style: TextInputComposite.Style = .default) {
      self.labelText = label
      self.inputText = input
      self.style = style
      super.init(frame: .zero)
      _ = self.label
      _ = textInput
   }
}
