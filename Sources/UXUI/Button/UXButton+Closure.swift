import Foundation
import QuartzCore
import Cocoa
/**
 * Closure signatures
 */
extension UXButton {
   public typealias UpInsideCallBack = () -> Void
   public typealias UpOutsideCallBack = () -> Void
   public typealias DownCallBack = () -> Void
   public typealias UpCallBack = () -> Void
   public typealias OverCallBack = () -> Void
   public typealias OutCallBack = () -> Void
}
/**
 * Const
 */
extension UXButton {
   /**
    * Default closure
    */
   public static let defaultUpInside: UpInsideCallBack = {}
   public static let defaultUpOutside: UpOutsideCallBack = {}
   public static let defaultUp: UpCallBack = {}
   public static let defaultDown: DownCallBack = {}
   public static let defaultOver: OverCallBack = {}
   public static let defaultOut: OutCallBack = {}
}
