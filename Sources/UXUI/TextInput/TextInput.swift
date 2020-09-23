import Cocoa
import With
import QuartzCore
/**
 * - Fixme: ⚠️️ Add option to input data in secondary
 */
open class TextInput: UXView {
   public lazy var primaryLabel: UXLabel = createPrimaryLabel()
   public lazy var secondaryLabel: UXLabel = createSecondaryLabel()
   let primaryText: String
   let secondaryText: String
   // secondaryLabel
   public init(primaryText: String = "Primary", secondaryText: String = "Secondary", frame: CGRect = .zero) {
      self.primaryText = primaryText
      self.secondaryText = secondaryText
      super.init(frame: frame)
      _ = primaryLabel
      _ = secondaryLabel
   }
}
