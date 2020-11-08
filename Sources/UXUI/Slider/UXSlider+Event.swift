import Foundation
import QuartzCore
/**
 * Eventhandler
 */
extension UXSlider {
   /**
    * Press down
    * - Parameter p: position of the mouse on the button
    */
   open func onButtonDown(p: CGPoint) {
      tempThumbMousePos = p
   }
   /**
    * Continous moving press
    * - Parameter p: position of the mouse on the track
    */
   open func onButtonMove(p: CGPoint) {
      self.progress = SliderHelper.progress(mouseVal: p[axis], tempMouseVal: tempThumbMousePos[axis], side: self.frame.size[axis], thumbSide: button.frame.size[axis])
      onChange(self.progress)
   }
   /**
    * - Fixme: ⚠️️ Not really needed, as move fires immediatly
    * - Parameter p: position of the mouse on the track
    */
   open func onBackgroundDown(p: CGPoint) {
      tempThumbMousePos = .init(x: button.frame.width / 2, y: button.frame.height / 2)
      onButtonMove(p: p) // Replay - only needed for mac really ⚠️️
   }
   /**
    * When the user press moves on the track-element
    * - Parameter p: position of the mouse on the track
    */
   open func onBackgroundMove(p: CGPoint) {
      let progress = SliderHelper.progress(mouseVal: p[axis], tempMouseVal: button.frame.size[axis] / 2, side: frame.size[axis], thumbSide: button.frame.size[axis])
      self.progress = progress
      onChange(self.progress)
   }
}
