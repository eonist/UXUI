import Foundation
import QuartzCore

final class SliderHelper {
   /**
    * Returns The progress derived from a node
    * - Return: A number between 0 and 1
    * - Parameters:
    *   - mouseVal: Previouse pressed
    *   - tempMouseVal: Previouse pressed
    *   - side: Dimension of the slider
    *   - thumbSide: Dimension of the
    */
   static func progress(mouseVal: CGFloat, tempMouseVal: CGFloat, side: CGFloat, thumbSide: CGFloat) -> CGFloat {
      if thumbSide == side { return 0 } // If the thumbHeight is the same as the height of the slider then return 0
      let progress: CGFloat = (mouseVal - tempMouseVal) / (side - thumbSide)
      return max(0, min(progress, 1)) // Ensures that progress is between 0 and 1 and if its beyond 0 or 1 then it is 0 or 1
   }
   /**
    * - Return: the position of a thumbs progress
    * - Parameters:
    *   - progress: 0 - 1
    *   - side: Dimension of the slider
    *   - thumbSide: Dimension of the thumb
    */
   static func thumbPosition(progress: CGFloat, side: CGFloat, thumbSide: CGFloat) -> CGFloat {
      let minThumbPos: CGFloat = side - thumbSide // Minimum thumb position
      return progress * minThumbPos
   }
}
