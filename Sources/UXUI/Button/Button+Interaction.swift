import Cocoa

extension Button {
   /**
    * Mouse down
    */
   override open func mouseDown(with event: NSEvent) {
      //      Swift.print("mouseDown")
      onDown()
   }
   /**
    * Mouse up
    * - Important ⚠️️ Remember to set .isEnabled = false for views that may cover and claim viewUnderMouse, then upInside wont work
    */
   override open func mouseUp(with event: NSEvent) {
      //      Swift.print("mouseUp")
      let viewUnderMouse: NSView? = window?.contentView?.hitTest(event.locationInWindow)
      viewUnderMouse === self ? onUpInside() : onUpOutside() // if the event was on this button call triggerRelease, else triggerReleaseOutside
      onUp()
   }
}
/**
 * Interactions (Common for iOS and macOS)
 */
extension Button {
   /**
    * Overridable
    */
   @objc open func onUp() {
      upCallBack()
   }
   /**
    * Overridable
    */
   @objc open func onUpInside() {
      upInsideCallBack()
   }
   /**
    * Overridable
    */
   @objc open func onUpOutside() {
      upOutsideCallBack()
   }
   /**
    * Overridable
    */
   @objc open func onDown() {
      downCallBack()
   }
}
