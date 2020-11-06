import Cocoa
/**
 * Style
 * - Fixme: ⚠️️ rename to frontColor, backColor
 */
extension UXSwitch {
   /**
    * - Note: This can't be named Style, because the class subclass Button which has that domain
    */
   public struct SwitchStyle {
      let foregroundColor: NSColor // color of foreground
      let backgroundColor: NSColor // color of background
      let foregroundPadding: CGSize
      public init(foregroundColor: NSColor, backgroundColor: NSColor, foregroundPadding: CGSize = .init(width: 8, height: 8)) {
         self.foregroundColor = foregroundColor
         self.backgroundColor = backgroundColor
         self.foregroundPadding = foregroundPadding
      }
   }
   /**
    * on / off style
    */
   public struct Styles {
      let selected: SwitchStyle // selected foreground / background
      let unSelected: SwitchStyle // unSelected foreground / background
      public init(selected: UXSwitch.SwitchStyle, unSelected: UXSwitch.SwitchStyle) {
         self.selected = selected
         self.unSelected = unSelected
      }
   }
}
/**
 * Const
 */
extension UXSwitch.Styles {
   public static let `default`: UXSwitch.Styles = .init(selected: selected, unSelected: unSelected)
   public static let selected: UXSwitch.SwitchStyle = .init(foregroundColor: Theme.Switch.Selected.foreground, backgroundColor: Theme.Switch.Selected.background)
   public static let unSelected: UXSwitch.SwitchStyle = .init(foregroundColor: Theme.Switch.UnSelected.foreground, backgroundColor: Theme.Switch.UnSelected.background)
}
