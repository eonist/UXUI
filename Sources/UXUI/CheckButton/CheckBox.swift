import Foundation
import QuartzCore
/**
 * ## Examples:
 * let btn: CHeckButton = .init()
 * view.addSubview(btn)
 * btn.selected = true
 */
open class CheckBox: Button, Selectable {
   open var selected: Bool {
      didSet {
         self.checkButtonStyle = selected ? styles.active : styles.inActive
      }
   }
   internal var styles: CheckBox.Styles
   internal var checkButtonStyle: CheckBox.Style { // backgroundColor, borderColor, textColor
      didSet {
         self.layer?.borderWidth = 1
         self.layer?.borderColor = checkButtonStyle.borderColor.cgColor
         self.layer?.backgroundColor = checkButtonStyle.backgroundColor.cgColor
      }
   }
   /**
    * Initiate
    * - Parameters:
    *   - selected: on or off
    *   - styles: on / off style
    *   - frame: size of component
    */
   public init(selected: Bool = false, styles: CheckBox.Styles = .default, frame: CGRect = .zero) {
      self.selected = selected
      self.styles = styles
      self.checkButtonStyle = selected ? styles.active : styles.inActive
      super.init(style: checkButtonStyle.buttonStyle, frame: frame)
      // Styling
      _ = { self.checkButtonStyle = self.checkButtonStyle }() // hack
   }
}
