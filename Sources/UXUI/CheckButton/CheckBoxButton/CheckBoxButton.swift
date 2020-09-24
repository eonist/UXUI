import Foundation
/**
 * CheckBoxButton
 * - Fixme: ⚠️️ make the style better
 */
open class CheckBoxButton: UXView {
   lazy var textField: UXLabel = createTextField()
   public lazy var checkBox: CheckButton = createCheckBox()
   let text: String
   let checkBoxStyles: CheckButton.Styles
   open var selected: Bool { didSet { checkBox.selected = selected } }
   /**
    * Initiate
    */
   public init(text: String, selected: Bool, checkBoxStyles: CheckButton.Styles) {
      self.text = text
      self.selected = selected
      self.checkBoxStyles = checkBoxStyles
      super.init(frame: .zero)
      _ = checkBox
      _ = textField
   }
}
