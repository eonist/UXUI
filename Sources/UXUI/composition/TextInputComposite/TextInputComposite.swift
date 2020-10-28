import Foundation
import With
import Spatial
/**
 * Label and TextInput
 */
open class TextInputComposite: UXView {
   lazy var text: UXLabel = createLabel() // text lable
   lazy var input: UXLabel = createInputText()
   let labelText: String
   let inputText: String
   let style: Style
   /**
    * init
    */
   public init(label: String = "Input", input: String = "Text here", style: TextInputComposite.Style = .default) {
      self.labelText = label
      self.inputText = input
      self.style = style
      super.init(frame: .zero)
      _ = self.text
      _ = input
   }
}
