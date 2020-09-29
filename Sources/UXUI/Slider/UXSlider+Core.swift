import Foundation

extension UXSlider {
   /**
    * Calls the common drawLayout method (Only way to get frame in auto-layout a cross ios and macos)
    */
   override open func layout() {
      super.layout()
      let progress = self.progress
      self.progress = progress
   }
}
