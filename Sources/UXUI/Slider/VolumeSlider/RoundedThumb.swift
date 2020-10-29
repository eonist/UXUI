import Cocoa
import With

extension VolumeSlider {
   /**
    * RoundedThumb
    */
   public final class RoundedThumb: Thumb {
      /**
       * - Fixme: ⚠️️ make own foreground
       */
      public lazy var foreground: Foreground = createForeground()
      override public init(frame: CGRect = .zero) {
         super.init(frame: frame)
      }
   }
}
/**
 * Create
 */
extension VolumeSlider.RoundedThumb {
   /**
    * Create foreground
    */
   func createForeground() -> Foreground {
      with(.init(backgroundColor: .clear)) {
         addSubview($0)
//         $0.layer?.backgroundColor = NSColor.gray.cgColor // checkButtonStyle.foregroundColor.cgColor
         $0.anchorAndSize(to: self, align: .topLeft, alignTo: .topLeft/*, offset: .init(x: 8 / 2, y: 8 / 2), sizeOffset: .init(width: -8, height: -8)*/)
         // -checkButtonStyle.foregroundPadding.width
      }
   }
}
/**
 * Foreground
 */
extension VolumeSlider.RoundedThumb {
   public final class Foreground: UXGraphicView {
      /**
       * - Abstract. the drawlayout method is the only method were we can get frame when using autolayout
       */
      override public func layout() {
         super.layout()
         self.layer?.cornerRadius = self.frame.height / 2
      }
   }
}
