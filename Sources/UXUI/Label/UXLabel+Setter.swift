import Cocoa

extension UXLabel {
   /**
    * - Note: hack to avoid activating drawBackground
    */
   override open var backgroundColor: NSColor? {
      get {
         super.backgroundColor
      } set {
         self.drawsBackground = newValue != NSColor.clear // activate drawsBackground, if background color is set
         super.backgroundColor = newValue
      }
   }
}
