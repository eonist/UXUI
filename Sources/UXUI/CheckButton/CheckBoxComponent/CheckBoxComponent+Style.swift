import Cocoa

extension CheckBoxComponent {
   public struct Style {
      let label: UXLabel.Style
      let checkBox: CheckBox.Styles
   }
}
extension CheckBoxComponent.Style {
   public static let `default`: CheckBoxComponent.Style = .init(label: .default, checkBox: .default)
}
