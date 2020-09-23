import Foundation
import With
/**
 * Create
 */
extension TextInput {
   /**
    * Primary
    */
   func createPrimaryLabel() -> UXLabel {
      with(.init(frame: .zero)) {
         $0.text = primaryText
         $0.textColor = TextInput.defaultStyle.primaryTextColor // ⚠️️ fix
         $0.textAlignment = .left
         $0.font = .systemFont(ofSize: 20) // ⚠️️ fix
         $0.centerVertically()
         addSubview($0)
         $0.anchorAndSize(to: $0, align: .topLeft, alignTo: .topLeft, multiplier: .init(width: 0.5, height: 1))
      }
   }
   /**
    * Secondary
    */
   func createSecondaryLabel() -> UXLabel {
      with(.init(frame: .zero)) {
         $0.text = primaryText
         $0.textColor = TextInput.defaultStyle.primaryTextColor // ⚠️️ fix
         $0.textAlignment = .left
         $0.font = .systemFont(ofSize: 20) // ⚠️️ fix
         $0.centerVertically()
         addSubview($0)
         $0.anchorAndSize(to: $0, align: .topRight, alignTo: .topRight, multiplier: .init(width: 0.5, height: 1))
      }
   }
}
