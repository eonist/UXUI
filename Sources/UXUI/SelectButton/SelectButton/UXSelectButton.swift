import Foundation
import QuartzCore
/**
 * A button that can have a selected state / style
 */
open class UXSelectButton: UXButton, Selectable {
   internal var styles: Styles
   open var selected: Bool {
      didSet {
         self.style = selected ? styles.active : styles.inActive
      }
   }
   /**
    * - Parameters:
    *   - selected: The initial selected state of the button
    *   - styles: The initial styles of the button
    *   - frame: the initial size of the button
    */
   public init(selected: Bool = false, styles: Styles = defaultStyles, frame: CGRect = .zero) {
      self.styles = styles
      self.selected = selected
      let style: Style = selected ? styles.active : styles.inActive
      super.init(style: style, frame: frame)
      _ = { self.selected = self.selected }() // hack
   }
}
