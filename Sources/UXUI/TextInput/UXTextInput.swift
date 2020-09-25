import Foundation
import With
import Spatial

open class UXTextInput: UXView {
   lazy var label: NSLabel = createLabel() // text lable
   lazy var textInput: NSLabel = createInputText()
   let lableText: String // initial text - Fixme: ⚠️️ rename to initText ?
   let inputText: String
   let style: Style
   /**
    * init
    */
   public init(lableText: String = "label", inputText: String = "input", style: UXTextInput.Style = .default) {
      self.lableText = lableText
      self.inputText = inputText
      self.style = style
      super.init(frame: .zero)
      _ = label
      _ = textInput
   }
}
extension UXTextInput {
   /**
    * label
    */
   func createLabel() -> NSLabel {
      with(.init()) {
         $0.textColor = UXTextInput.Style.default.label.textColor
         $0.font = UXTextInput.Style.default.label.font
         $0.text = self.lableText
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
   func createInputText() -> NSLabel {
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
