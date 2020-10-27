import Cocoa

extension SwitchComposite {
   /**
    * Style
    */
   public struct Style {
      public let label: UXLabel.Style
      public let `switch`: UXSwitch.Styles
   }
}
/**
 * Const
 */
extension SwitchComposite.Style {
   public static let `default`: SwitchComposite.Style = .init(label: .default, switch: .default)
}
