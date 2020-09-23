import Cocoa
import Spatial
import QuartzCore
/**
 * - Fixme: ⚠️️ Add ability to add stroke?
 * - Fixme: ⚠️️ Add ability to use 1.5x width?
 * - Fixme: ⚠️️ Add ability to drag? see legacy project for code etc
 */
open class NSSwitch: Button, Selectable {
   var switchStyles: SwitchStyles
   public var switchStyle: SwitchStyle
   public lazy var foreground: SwitchForeground = createForeground()
   /**
    * Change selected state
    */
   open var selected: Bool {
      didSet {
         self.switchStyle = self.selected ? switchStyles.selected : switchStyles.unSelected
         super.style.backgroundColor = self.switchStyle.backgroundColor
         foreground.layer?.backgroundColor = self.switchStyle.foregroundColor.cgColor
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
   public init(isSelected: Bool, styles: SwitchStyles = defaultSwitchStyles, frame: CGRect = .zero) {
      self.selected = isSelected
      self.switchStyles = styles
      self.switchStyle = isSelected ? styles.selected : styles.unSelected
      let selectedStyle: Style = .init(backgroundColor: styles.selected.backgroundColor, borderColor: NSColor.clear, borderWidth: 0, isRounded: true)
      let unSelectedStyle: Style = .init(backgroundColor: styles.unSelected.backgroundColor, borderColor: NSColor.clear, borderWidth: 0, isRounded: true)
      let style: Style = isSelected ? selectedStyle : unSelectedStyle
      super.init(style: style, frame: frame)
      _ = foreground
      _ = { self.selected = self.selected }() // hack
   }
}
// self.caLayer?.borderWidth = style.borderWidth
// self.caLayer?.borderColor = style.borderColor.cgColor
