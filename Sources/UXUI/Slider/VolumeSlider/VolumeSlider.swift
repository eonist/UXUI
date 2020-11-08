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
//      Swift.print("createThumb")
      return with(.init()) {
         addSubview($0)
         $0.foreground.backgroundColor = style.thumbColor
         $0.applyAnchorAndSize(to: self, width: buttonSide, height: buttonSide, align: .centerLeft, alignTo: .centerLeft)
         $0.onDown = onButtonDown
         $0.onMove = onButtonMove
      }
   }
   /**
    * Create the background
    */
   override func createBackground() -> RoundedTrack {
//      Swift.print("createBackground")
      return with(.init()) {
         addSubview($0)
         $0.layer?.backgroundColor = style.trackColor.cgColor
         $0.anchorAndSize(to: self, height: 4, align: .centerLeft, alignTo: .centerLeft)
         $0.onDown = onBackgroundDown
         $0.onMove = onBackgroundMove
      }
   }
}
/**
 * Style
 */
extension UXSlider.Style {
   public static let volumSliderStyle: UXSlider.Style = .init(thumbColor: Theme.VolumeSlider.thumb, trackColor: Theme.VolumeSlider.track)
}
