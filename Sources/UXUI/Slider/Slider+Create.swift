import Cocoa
import With
import Spatial
/**
 * Create
 */
extension Slider {
   /**
    * Button
    */
   @objc func createThumb() -> Thumb {
      with(.init()) {
         addSubview($0)
         $0.layer?.backgroundColor = style.thumbColor.cgColor
         $0.applyAnchorAndSize(to: self, width: buttonSide, height: buttonSide, align: .topLeft, alignTo: .topLeft )
         $0.onDown = onButtonDown
         $0.onMove = onButtonMove
      }
   }
   /**
    * Background
    */
   @objc func createBackground() -> Track {
      with(.init()) {
         addSubview($0)
         $0.layer?.backgroundColor = style.trackColor.cgColor
         $0.anchorAndSize(to: self, align: .topLeft, alignTo: .topLeft )
         $0.onDown = onBackgroundDown
         $0.onMove = onBackgroundMove
      }
   }
}
