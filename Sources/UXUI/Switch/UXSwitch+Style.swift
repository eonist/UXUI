import Cocoa
/**
 * Style
 */
extension UXSwitch {
   /**
    * - Fixme: ⚠️️ rename to something better, Styles
    */
   public struct SwitchStyles {
      let selected: SwitchStyle // selected fore / background
      let unSelected: SwitchStyle // unSelected fore / background
   }
   /**
    * - Fixme: ⚠️️ rename to Style
    */
   public struct SwitchStyle {
      let foregroundColor: NSColor // color of foreground
      let backgroundColor: NSColor // color of background
   }
}
/**
 * Const
 */
extension UXSwitch.SwitchStyles {
   public static let `default`: UXSwitch.SwitchStyles = .init(selected: selectedStyle, unSelected: unSelectedStyle)
   public static let selectedStyle: UXSwitch.SwitchStyle = .init(foregroundColor: .gray, backgroundColor: .lightGray)
   public static let unSelectedStyle: UXSwitch.SwitchStyle = .init(foregroundColor: .lightGray, backgroundColor: .gray)
}
