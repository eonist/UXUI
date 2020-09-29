import Foundation
import With
import Spatial

open class UXTextInput: UXView {
   lazy var label: UXLabel = createLabel() // text lable
   lazy var textInput: UXLabel = createInputText()
   let labelText: String
   let inputText: String
   let style: Style
   /**
    * init
    */
   public init(label: String = "label", input: String = "input", style: UXTextInput.Style = .default) {
      self.labelText = label
      self.inputText = input
      self.style = style
      super.init(frame: .zero)
      _ = self.label
      _ = textInput
   }
}
extension UXTextInput {
   /**
    * label
    */
   func createLabel() -> UXLabel {
      with(.init()) {
         $0.textColor = UXTextInput.Style.default.label.textColor
         $0.font = UXTextInput.Style.default.label.font
         $0.text = self.labelText
         $0.textAlignment = .left
         $0.centerVertically()
         self.addSubview($0)
         $0.size(to: self, axis: .ver, toAxis: .ver)
         $0.anchor(to: self)
         $0.anchor(to: self.textInput, align: .topRight, alignTo: .topLeft)
      }
   }
   /**
    * text-input
    */
   func createInputText() -> UXLabel {
      with(.init()) {
         $0.text = inputText
         $0.textColor = UXTextInput.Style.default.input.textColor // ⚠️️ fix
         $0.textAlignment = .left
         $0.font = UXTextInput.Style.default.input.font
         $0.centerVertically()
         addSubview($0)
         $0.anchorAndSize(to: $0, align: .topRight, alignTo: .topRight, multiplier: .init(width: 0.5, height: 1))
      }
   }
}
/**
 * Style
 */
extension UXTextInput {
   public struct Style {
      let label: UXLabel.Style
      let input: UXLabel.Style
   }
}
/**
 * Style const
 */
extension UXTextInput.Style {
   public static let `default`: UXTextInput.Style = .init(label: .default, input: .default)
}
