import Foundation
import QuartzCore
/**
 * A TextButton that can have a selected state / style
 */
open class UXSelectTextButton: UXTextButton, Selectable {
   internal var styles: Styles
   open var selected: Bool {
      didSet {
         self.textLabel.text = selected ? texts.selected : texts.unSelected
         self.textButtonStyle = selected ? styles.active : styles.inActive
      }
   }
   public typealias Text = (selected: String, unSelected: String)
   public static let defaultTexts: Text = ("Selected", "UnSelected")
   // - Fixme: ⚠️️ maybe add didset on the bellow var
   public var texts: Text
   public init(selected: Bool = false, texts: Text = defaultTexts, styles: Styles = .defaultStyles, frame: CGRect = .zero) {
      self.styles = styles
      self.selected = selected
      self.texts = texts
      let style: UXTextButton.Style = selected ? styles.active : styles.inActive
      super.init(text: selected ? texts.selected : texts.unSelected, style: style, frame: frame)
      _ = { self.selected = self.selected }() // hack
   }
}
