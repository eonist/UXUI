import Foundation
/**
 * Const
 */
extension NSSwitch {
   public static let defaultSwitchStyles: SwitchStyles = .init(selected: selectedStyle, unSelected: unSelectedStyle)
   public static let selectedStyle: SwitchStyle = .init(foregroundColor: .gray, backgroundColor: .lightGray)
   public static let unSelectedStyle: SwitchStyle = .init(foregroundColor: .lightGray, backgroundColor: .gray)
}
