import Foundation
import QuartzCore
/**
 * ## Examples:
 * let btn: CHeckButton = .init()
 * view.addSubview(btn)
 * btn.selected = true
 */
open class CheckButton: Button, Selectable {
   open var selected: Bool {
      didSet {
         self.checkButtonStyle = selected ? styles.active : styles.inActive
      }
   }
   // Style
   internal var styles: CheckButton.Styles
   internal var checkButtonStyle: CheckButton.Style { // backgroundColor, borderColor, textColor
      didSet {
         self.layer?.borderWidth = 1
         self.layer?.borderColor = checkButtonStyle.borderColor.cgColor
         self.layer?.backgroundColor = checkButtonStyle.backgroundColor.cgColor
      }
   }
   /**
    * Initiate
    */
   public init(selected: Bool = false, styles: CheckButton.Styles = .default, frame: CGRect = .zero) {
      self.selected = selected
      self.styles = styles
      self.checkButtonStyle = selected ? styles.active : styles.inActive
      // - Fixme: ⚠️️ move button style getter bellow to the CheckButton.Style scope
      let style: Button.Style = .init(backgroundColor: checkButtonStyle.backgroundColor, borderColor: checkButtonStyle.borderColor, borderWidth: 1, isRounded: checkButtonStyle.isRounded)
      super.init(style: style, frame: frame)
      // Styling
      _ = { self.checkButtonStyle = self.checkButtonStyle }() // hack
   }
}
