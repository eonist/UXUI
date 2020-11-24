import Foundation
import With
import Spatial
/**
 * Label and TextInput
 */
open class TextInputComposite: UXView {
   public lazy var textLabel: UXLabel = createLabel() // text lable
   public lazy var inputLabel: UXLabel = createInputText()
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
      _ = self.textLabel
      _ = input
   }
}
