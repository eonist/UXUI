import Cocoa

extension CheckBoxComposite {
   public struct Style {
      public let label: UXLabel.Style
      public let checkBox: UXCheckBox.Styles
   }
}
extension CheckBoxComposite.Style {
   public static let `default`: CheckBoxComposite.Style = .init(label: .default, checkBox: .default)
}
