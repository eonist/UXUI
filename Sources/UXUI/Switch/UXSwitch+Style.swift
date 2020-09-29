import Cocoa
/**
 * Style
 */
extension UXSwitch {
   /**
    * on / off style
    */
   public struct Styles {
      let selected: SwitchStyle // selected fore / background
      let unSelected: SwitchStyle // unSelected fore / background
   }
   /**
    * - Note: This can't be named Style, because the class subclass Button which has that domain
    */
   public struct SwitchStyle {
      let foregroundColor: NSColor // color of foreground
      let backgroundColor: NSColor // color of background
   }
}
/**
 * Const
 */
extension UXSwitch.Styles {
   public static let `default`: UXSwitch.Styles = .init(selected: selected, unSelected: unSelected)
   public static let selected: UXSwitch.SwitchStyle = .init(foregroundColor: .gray, backgroundColor: .lightGray)
   public static let unSelected: UXSwitch.SwitchStyle = .init(foregroundColor: .lightGray, backgroundColor: .gray)
}
