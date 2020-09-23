import Foundation
/**
 * - Note: this class also works great with RadioBullets
 * - Note: Use the SelectGroupModifier and SelectGroupParser for Modifing and parsing the SelectGroup
 * - Fixme: ⚠️️ You could add a SelectGroupExtension class that adds Modifing and parsing methods to the SelectGroup instance!
 * ## Examples:
 * let views = [btn1, btn2]
 * let selectGroup: SelectGroup = .init(selectables: views, selected: btn1)
 * views.forEach { view in view.tapUpInsideCallBack = { selectGroup.selected = view } }
 */
public class SelectGroup {
   public var selectables: [Selectable]
   public var selected: Selectable? {
      didSet {
         guard let selected = selected else { return }
         SelectGroup.unSelectAll(except: selected, selectables: selectables)
      }
   }
   public init(selectables: [Selectable], selected: Selectable? = nil) {
      self.selectables = selectables
      self.selected = selected
   }
}
