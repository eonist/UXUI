import Spatial
import Cocoa
/**
 * Button for macOS (Native NSButton is bloated and isn't easily customized)
 * - Note: ConstraintKind: Makes the component work with bulk autolayout functionality and animation
 * - Fixme: ⚠️️ Style could be StyleKind and then be overriden in subclasses?
 * ## Examples:
 * let btn: Button = .init(frame: .init(x: 0, y: 0, width: 120, height: 40))
 * view.addSubview(btn)
 * btn.tapUpInsideCallBack = { Swift.print("🎉") }
 */
open class UXButton: UXGraphicView, ConstraintKind {
   /**
    * - Abstract: Anchor and size stores the autolayout-constraints
    * - Note: We have to store the constraints because we animate them
    */
   public var anchorAndSize: AnchorAndSize?
   internal var hasMouseEntered: Bool = false // Required for onOver / onOut to work
   // Call-backs
   public var upInsideCallBack: UpInsideCallBack = defaultUpInside // rename to upInside
   public var upOutsideCallBack: UpOutsideCallBack = defaultUpOutside // upOutside
   public var downCallBack: DownCallBack = defaultDown // down
   public var upCallBack: UpCallBack = defaultUp // up
   public var overCallBack: UpCallBack = defaultOver // over
   public var outCallBack: UpCallBack = defaultOut // out
   // Style
   public var style: Style // Remark: This must be public, since we might need to set it for animation etc
   /**
    * Initiate
    * - Note: setting raster ref: https://stackoverflow.com/questions/24316705/how-to-draw-a-smooth-circle-with-cashapelayer-and-uibezierpath
    * - Parameters:
    *   - style: background, border, roundedness
    *   - frame: size of the button, if you dont use AutoLayout
    */
   public init(style: UXButton.Style = .default, frame: CGRect = .zero) {
      self.style = style
      super.init(backgroundColor: style.backgroundColor, isRounded: style.isRounded, frame: frame)
   }
}
