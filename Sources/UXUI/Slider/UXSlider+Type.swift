import Foundation
import QuartzCore
/**
 * Typealias
 */
extension UXSlider {
   public typealias OnChange = (_ progress: CGFloat) -> Void
   static let defaultOnChange: OnChange = { _ in Swift.print("The user must assign this call-back") }
}
