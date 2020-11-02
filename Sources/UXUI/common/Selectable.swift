import Foundation

public protocol Selectable: AnyObject {
   public var selected: Bool { get set } // { get { return getSelected() } set { setSelected(newValue) } }
}
