import Cocoa
import With

extension VolumeSlider {
   /**
    * RoundedThumb
    */
   public final class RoundedThumb: Thumb {
      public lazy var foreground: UXCheckBox.Foreground = createForeground()
      public override init(frame: CGRect = .zero) {
         super.init(frame: frame)
      }
   }
}
extension VolumeSlider.RoundedThumb {
   /**
    * Create foreground
    */
   func createForeground() -> UXCheckBox.Foreground {
      with(.init()) {
         addSubview($0)
//         $0.layer?.backgroundColor = NSColor.gray.cgColor // checkButtonStyle.foregroundColor.cgColor
         $0.anchorAndSize(to: self, align: .topLeft, alignTo: .topLeft, offset: .init(x: 8 / 2, y: 8 / 2), sizeOffset: .init(width: -8, height: -8))
         // -checkButtonStyle.foregroundPadding.width
      }
   }
}
