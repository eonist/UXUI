import Cocoa
import Spatial
import QuartzCore
/**
 * Switch for macOS (macos doesnt have this, like ios has)
 * - Fixme: ⚠️️ rename to UXToggle? or be consistent with iOS?
 * - Fixme: ⚠️️ Add ability to add stroke?
 * - Fixme: ⚠️️ Add ability to use 1.5x width?
 * - Fixme: ⚠️️ Add ability to drag? see legacy project for code etc
 */
open class UXSwitch: UXButton, Selectable {
   var switchStyles: Styles
   public var switchStyle: SwitchStyle
   public lazy var foreground: SwitchForeground = createForeground()
   /**
    * Change selected state
    * - Fixme: ⚠️️ the layout calls should be baked into background var?
    */
   open var selected: Bool {
      didSet {
         self.switchStyle = self.selected ? switchStyles.selected : switchStyles.unSelected
         super.style.backgroundColor = self.switchStyle.backgroundColor
         self.backgroundColor = self.switchStyle.backgroundColor
         self.layout()
         foreground.backgroundColor = self.switchStyle.foregroundColor
         foreground.layout()
         toggleForegroundPosition()
      }
   }
   /**
    * Initiate
    * - Parameters:
    *   - isSelected: on / off
    *   - styles: on / off (foreground/ background)
    *   - frame: size of Switch
    */
   public init(isSelected: Bool = false, styles: Styles = .default, frame: CGRect = .zero) {
      self.selected = isSelected
      self.switchStyles = styles
      self.switchStyle = isSelected ? styles.selected : styles.unSelected
      let selectedStyle: UXButton.Style = .init(backgroundColor: styles.selected.backgroundColor, borderColor: .clear, borderWidth: 0, isRounded: true)
      let unSelectedStyle: UXButton.Style = .init(backgroundColor: styles.unSelected.backgroundColor, borderColor: .clear, borderWidth: 0, isRounded: true)
      let style: Style = isSelected ? selectedStyle : unSelectedStyle
      super.init(style: style, frame: frame)
      _ = foreground
      _ = { self.selected = self.selected }() // hack
   }
}
// self.caLayer?.borderWidth = style.borderWidth
// self.caLayer?.borderColor = style.borderColor.cgColor
