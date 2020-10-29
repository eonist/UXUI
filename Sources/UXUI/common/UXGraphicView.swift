import Cocoa

open class UXGraphicView: UXLayerView {
   var backgroundColor: NSColor
   /**
    * - Parameters:
    *   - backgroundColor: the background color of the switch-foreground
    *   - frame: Initial size and position of the frame
    */
   public init(backgroundColor: NSColor = .clear, frame: CGRect = .zero) {
      self.backgroundColor = backgroundColor
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
}
