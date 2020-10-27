import Foundation

extension VolumeSlider {
   /**
    * RoundedTrack
    */
   final class RoundedTrack: Track {
      /**
       * - Abstract. the drawlayout method is the only method were we can get frame when using autolayout
       */
      override func layout() {
         super.layout()
         guard let axis = (self.superview as? UXSlider)?.axis else { return }
         switch axis {
         case .hor:
            self.layer?.cornerRadius = self.frame.height / 2
//            self.layer?.frame.size.height = self.frame.height / 2
//            self.layer?.frame.origin.y = self.frame.height / 2
         case .ver:
            self.layer?.cornerRadius = self.frame.width / 2
//            self.layer?.frame.size.width = self.frame.width / 2
//            self.layer?.frame.origin.x = self.frame.width / 2
         }
      }
   }
}
