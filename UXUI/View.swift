import Cocoa
import With
import Spatial
/**
 * Sandbox for UI-Components
 */
open class View: UXView {
   lazy var label: UXLabel = .init(text: "TextLabel", style: .default)
   lazy var textInput: TextInputComposite = .init(label: "TextInput", input: "text here", style: .default)
   lazy var textButtonComponent: TextButtonComposite = .init(labelText: "TextButton", buttonText: "Button", style: .default)
   lazy var switchComponent: SwitchComposite = .init(text: "Switch: ", selected: false, style: .default)
   lazy var checkBoxComponent: CheckBoxComposite = .init(text: "CheckBox: ", selected: false, style: .default)
   lazy var sliderComponent: SliderComposite = .init(text: "Slider: ", style: .default)
   /**
    * Init
    * - Fixme: ⚠️️ add margins as global params etc
    */
   override public init(frame: CGRect) {
      super.init(frame: frame)
      Swift.print("Hello world")
      self.wantsLayer = true // if true then view is layer backed
      createUI()
   }
}
/**
 * Create
 */
extension View {
   /**
    * UI
    * - Fixme: ⚠️️ add darkmode support, see how you can add the darkmode lib etc (color swatches etc)
    * - Fixme: ⚠️️ use that column align method in spatial
    */
   func createUI() {
      let uis = [label, textInput, textButtonComponent, switchComponent, checkBoxComponent, sliderComponent]
      uis.forEach { self.addSubview($0) }
      uis.distributeAndSize(dir: .ver, height: 32, spacing: 24, offset: .init(x: 24, y: 24), sizeOffset: .init(width: -44, height: 0))
      textInput.inputLabel.onTextFieldChange = {
         Swift.print("txt:  \(String(describing: self.textInput.inputLabel.text))")
      }
      textButtonComponent.textButton.upInsideCallBack = {
         Swift.print("button clicked")
      }
      switchComponent.switcher.upInsideCallBack = {
         Swift.print("IsOn:  \(self.switchComponent.switcher.selected)")
      }
      checkBoxComponent.checkBox.upInsideCallBack = {
         Swift.print("isChecked: \(self.checkBoxComponent.checkBox.selected)")
      }
      sliderComponent.slider.onChange = {
         Swift.print("slider.progress: \($0)")
      }
      // continue here:
         // add github actions 👌
         // make UXUI logo
         // make nice readme
         // add darkmode support 👈👈
         // add UI event listeners 👈
   }
}

