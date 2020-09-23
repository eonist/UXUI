import Foundation
/**
 * SelectGroup extension
 */
extension SelectGroup {
   /**
    * Unselects all
    */
   public static func unSelectAll( except: Selectable, selectables: [Selectable]) {
      selectables.forEach {
         if $0 !== except && $0.selected { $0.selected = false }
      }
   }
}
