import Foundation
import QuartzCore
import Cocoa
/**
 * Type
 */
extension Button {
   /**
    * Style
    */
   public struct Style {
      var backgroundColor: NSColor // Color of the background
      let borderColor: NSColor // Color of the border
      let borderWidth: CGFloat // Thickness of the border
      let isRounded: Bool // Rounded corners
   }
}
/**
 * Default styles
 */
extension Button.Style {
   public static let `default`: Button.Style = .init(backgroundColor: .white, borderColor: .black, borderWidth: 1, isRounded: false)
   public static let alternate: Button.Style = .init(backgroundColor: .black, borderColor: .white, borderWidth: 1, isRounded: false)
}
/**
 * Closure signatures
 */
extension Button {
   public typealias UpInsideCallBack = () -> Void
   public typealias UpOutsideCallBack = () -> Void
   public typealias DownCallBack = () -> Void
   public typealias UpCallBack = () -> Void
   public typealias OverCallBack = () -> Void
   public typealias OutCallBack = () -> Void
}
