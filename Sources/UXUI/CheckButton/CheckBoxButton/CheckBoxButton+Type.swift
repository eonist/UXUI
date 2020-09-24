import Cocoa

extension CheckBoxButton {
   public struct Style {
      let textColor: NSColor
      let font: NSFont
   }
}
extension CheckBoxButton.Style {
   public static let `default`: CheckBoxButton.Style = .init(textColor: .black, font: .systemFont(ofSize: 20))
}
