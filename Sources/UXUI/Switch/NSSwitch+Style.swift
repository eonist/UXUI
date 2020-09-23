import Cocoa
/**
 * Style
 */
extension NSSwitch {
   /**
    * - Fixme: ⚠️️ rename to something better, Styles
    */
   public struct SwitchStyles {
      let selected: SwitchStyle // selected fore / background
      let unSelected: SwitchStyle // unSelected fore / background
   }
   /**
    * rename to Style
    */
   public struct SwitchStyle {
      let foregroundColor: NSColor // color of foreground
      let backgroundColor: NSColor // color of background
   }
}
