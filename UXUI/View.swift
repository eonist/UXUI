import Cocoa
import With
import Spatial
/**
 * Sandbox for UI-Components
 */
open class View: UXGraphicView {
   lazy var label: UXLabel = .init(text: "TextLabel ", style: .default)
   lazy var textInput: TextInputComposite = .init(label: "TextInput: ", input: "Text here", style: .default)
   lazy var textButtonComponent: TextButtonComposite = .init(labelText: "TextButton: ", buttonText: "Button", style: .default)
   lazy var switchComponent: SwitchComposite = .init(text: "Switch: ", selected: true, style: .default)
   lazy var checkBoxComponent: CheckBoxComposite = .init(text: "CheckBox: ", selected: true, style: .default)
   lazy var sliderComponent: SliderComposite = .init(text: "Slider: ", style: .default)
   var color: NSColor = .init()
   /**
    * Init
    * - Fixme: ⚠️️ add margins as global params etc
    */
   override public init(backgroundColor: NSColor, frame: CGRect) {
      super.init(backgroundColor: backgroundColor, frame: frame)
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
         // add darkmode support ✅
            // add apperance change detector ✅
            // research darkmode custom look for macos best practice ✅
            // add support for macos in darkmode repo ✅
            // add darkmode colors to styles ✅
            // make switch look better ✅
            // tweak volume slider a bit ✅
            // check if light-mode works properly ✅
         // add background to textinput? ✅
         // add linters 👈
         // make UXUI logo 👈
         // make nice readme 👈
         // add github actions 👌
         // soft launch 👈
         // add UI event listeners ✅
   }
}
