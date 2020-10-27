import Foundation
/**
 * CheckBoxButton
 * - Note: A label and a checkbox
 *  - Fixme: ⚠️️ rename to ....Composite?
 */
open class CheckBoxComposite: UXView {
   lazy var label: UXLabel = createLabel()
   public lazy var checkBox: UXCheckBox = createCheckBox()
   let text: String
   let style: Style
   open var selected: Bool { didSet { checkBox.selected = selected } }
   /**
    * Initiate
    */
   public init(text: String = "CheckBox", selected: Bool = false, style: Style = .default) {
      self.text = text
      self.selected = selected
      self.style = style
      super.init(frame: .zero)
      _ = checkBox
      _ = label
   }
}
