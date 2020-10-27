import Foundation
import QuartzCore
/**
 * Checkbox for macos
 * ## Examples:
 * let btn: CheckButton = .init()
 * view.addSubview(btn)
 * btn.selected = true
 */
open class UXCheckBox: UXButton, Selectable {
   public lazy var foreground: VolumeSlider.RoundedThumb = createForeground()
   open var selected: Bool {
      didSet {
         self.checkButtonStyle = selected ? styles.active : styles.inActive
         foreground.layer?.backgroundColor = self.checkButtonStyle.foregroundColor.cgColor
      }
   }
   internal var styles: UXCheckBox.Styles
   internal var checkButtonStyle: UXCheckBox.Style { // backgroundColor, borderColor, textColor
      didSet {
         self.layer?.borderWidth = 1
         self.layer?.backgroundColor = checkButtonStyle.foregroundColor.cgColor
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
   public init(selected: Bool = false, styles: UXCheckBox.Styles = .default, frame: CGRect = .zero) {
      self.selected = selected
      self.styles = styles
      self.checkButtonStyle = selected ? styles.active : styles.inActive
      super.init(style: checkButtonStyle.buttonStyle, frame: frame)
      _ = foreground
      // Styling
      _ = { self.checkButtonStyle = self.checkButtonStyle }() // hack
   }
}
