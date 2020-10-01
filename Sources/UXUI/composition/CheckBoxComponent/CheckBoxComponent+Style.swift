import Cocoa

extension CheckBoxComponent {
   public struct Style {
      public let label: UXLabel.Style
      public let checkBox: UXCheckBox.Styles
   }
}
extension CheckBoxComponent.Style {
   public static let `default`: CheckBoxComponent.Style = .init(label: .default, checkBox: .default)
}