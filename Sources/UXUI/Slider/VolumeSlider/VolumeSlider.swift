import Cocoa
import With
import Spatial
/**
 * VolumeSlider is basically just a rounded Slider
 */
public class VolumeSlider: Slider {
   /**
    * Create the button
    */
   override func createThumb() -> RoundedThumb {
      with(.init()) {
         addSubview($0)
         $0.layer?.backgroundColor = NSColor.green.cgColor
         $0.applyAnchorAndSize(to: self, width: buttonSide, height: buttonSide, align: .topLeft, alignTo: .topLeft)
         $0.onDown = onButtonDown
         $0.onMove = onButtonMove
      }
   }
   /**
    * Create the ackground
    */
   override func createBackground() -> RoundedTrack {
      with(.init()) {
         addSubview($0)
         $0.layer?.backgroundColor = NSColor.lightGray.cgColor
         $0.anchorAndSize(to: self, align: .topLeft, alignTo: .topLeft)
         $0.onDown = onBackgroundDown
         $0.onMove = onBackgroundMove
      }
   }
}
