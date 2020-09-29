import Cocoa

extension SwitchComponent {
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
extension SwitchComponent.Style {
   public static let `default`: SwitchComponent.Style = .init(label: .default, switch: .default)
}
