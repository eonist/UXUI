import Cocoa

open class UXGraphicView: UXLayerView {
   /**
    * - Fixme: ⚠️️ should we add didSet functionality to update background? for now i guess the caller can call layout or draw
    */
   open var backgroundColor: NSColor
   open var isRounded: Bool
   /**
    * - Parameters:
    *   - backgroundColor: the background color of the switch-foreground
    *   - frame: Initial size and position of the frame
    */
   public init(backgroundColor: NSColor = .clear, isRounded: Bool = false, frame: CGRect = .zero) {
      self.backgroundColor = backgroundColor
      self.isRounded = isRounded
      super.init(frame: frame)
   }
}
/**
 * Override
 */
extension UXGraphicView {
   /**
    * When apperance change, this is redrawn
    */
   override open func draw(_ dirtyRect: NSRect) {
      super.draw(dirtyRect)
      self.layer?.backgroundColor = backgroundColor.cgColor
   }
   /**
    * - Abstract. the drawlayout method is the only method were we can get frame when using autolayout
    * - Note: This is the only place to get frame.height consistently (when you use either AutoLayout or CGRect based layout)
    * - Fixme: ⚠️️ Maybe make this a style property, isRound etc? or corner radius
    */
   override open func layout() {
      super.layout()
//      Swift.print("\(self) layout backgroundColor:  \(backgroundColor)")
      self.layer?.backgroundColor = backgroundColor.cgColor
      self.layer?.cornerRadius = isRounded ? self.frame.size.height / 2 : self.layer?.cornerRadius ?? 0
   }
}
