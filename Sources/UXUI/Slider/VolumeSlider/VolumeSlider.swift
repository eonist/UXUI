import Cocoa
import With
import Spatial
/**
 * VolumeSlider is basically just a rounded Slider
 */
public class VolumeSlider: UXSlider {
   /**
    * Create the button
    */
   override func createThumb() -> RoundedThumb {
      Swift.print("createThumb")
      return with(.init()) {
         addSubview($0)
         $0.layer?.backgroundColor = style.thumbColor.cgColor
         $0.applyAnchorAndSize(to: self, width: buttonSide, height: buttonSide, align: .topLeft, alignTo: .topLeft)
         $0.onDown = onButtonDown
         $0.onMove = onButtonMove
      }
   }
   /**
    * Create the background
    */
   override func createBackground() -> RoundedTrack {
      Swift.print("createBackground")
      return with(.init()) {
         addSubview($0)
         $0.layer?.backgroundColor = style.trackColor.cgColor
         $0.anchorAndSize(to: self, align: .topLeft, alignTo: .topLeft)
         $0.onDown = onBackgroundDown
         $0.onMove = onBackgroundMove
      }
   }
}
