import Cocoa
import QuartzCore
import Spatial
/**
 * - Fixme: ⚠️️ Don't use autolayout inside the component (override layoutSubviews and set things with CGFloats etc)
 * - Fixme: ⚠️️ Add support for thumb.size based on background height
 */
open class Slider: UXView {
   public var onChange: OnChange = defaultOnChange
   lazy var button: Thumb = createThumb()
   lazy var background: Track = createBackground()
   let axis: Axis
   let buttonSide: CGFloat
   var tempThumbMousePos: CGPoint = .zero // Needed for when you use the thumb to slide
   let style: Style
   open var progress: CGFloat {
      didSet {
         let value: CGFloat = SliderHelper.thumbPosition(progress: progress, side: frame.size[axis], thumbSide: button.frame.size[axis])
         var pos: CGPoint = .zero
         pos[axis] = value
         button.update(offset: pos, align: .topLeft, alignTo: .topLeft)
      }
   }
   /**
    * Initiate
    * - Parameters:
    *   - axis: Horizontal or vertical
    *   - buttonSide: The dimension of the button
    *   - progress: 0 - 1
    */
   public init(axis: Axis, buttonSide: CGFloat, progress: CGFloat = 0, style: Style = .default) {
      self.axis = axis
      self.buttonSide = buttonSide
      self.progress = progress
      self.style = style
      super.init(frame: .zero)
      _ = background
      _ = button
   }
}
