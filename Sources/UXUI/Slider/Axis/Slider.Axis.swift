import Foundation
import QuartzCore

extension UXSlider {
   /**
    * Horizontal or vertical
    */
   public enum Axis {
      case hor, ver
   }
}
/**
 * Size
 */
extension CGSize {
   /**
    * A way to get width or height based on Axis type (Convenience)
    * ## Examples:
    * CGSize(width: 100, height: 200)[.hor] // 100
    */
   subscript(axis: UXSlider.Axis) -> CGFloat {
      get {
         switch axis {
         case .hor:
            return self.width
         case .ver:
            return self.height
         }
      } set {
         switch axis {
         case .hor:
            self.width = newValue
         case .ver:
            self.height = newValue
         }
      }
   }
}
/**
 * Point
 */
extension CGPoint {
   /**
    * A way to get x or y based on Axis type
    * ## Examples:
    * CGPoint(x: 20, y: 30)[.hor] // 20
    */
   subscript(dir: UXSlider.Axis) -> CGFloat { // Convenience
      get {
         switch dir {
         case .hor:
            return self.x
         case .ver:
            return self.y
         }
      } set {
         switch dir {
         case .hor:
            self.x = newValue
         case .ver:
            self.y = newValue
         }
      }
   }
}
