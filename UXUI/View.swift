import Cocoa
import With
import Spatial
/**
 * Sandbox for UI-Components
 */
open class View: UXView {
   lazy var label: UXLabel = creatLabel()
   lazy var textInput: TextInputComposite = createTextInput()
   lazy var textButtonComponent: TextButtonComposite = createTextComponent()
   lazy var switchComponent: SwitchComposite = createSwitchComponent()
   lazy var checkBoxComponent: CheckBoxComposite = createCheckBoxComponent()
   lazy var sliderComponent: SliderComposite = createSliderComponent()
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
      _ = label
      _ = textInput
      _ = textButtonComponent
      _ = switchComponent
      _ = checkBoxComponent
      _ = sliderComponent
      let uis = [label, textInput, textButtonComponent, switchComponent, checkBoxComponent, sliderComponent]
      uis.distributeAndSize(dir: .ver, height: 32, spacing: 24, offset: .init(x: 24, y: 24), sizeOffset: .init(width: -44, height: 0))
      // continue here:
         // add cgpoint based offset to distribute in spatial ✅
         // 👇👇👇 🏀
         // create example where you inline the composite uis, no need for creational methods
         // add padding to volume slider thumb, see switch padding 👈
         // fix track in volumeslider missbehaving when resizing parent ✅
         // add github actions 👌
         // make UXUI logo
         // make nice readme
         // add darkmode support
         // fix thumb in slider missbehaving on dragging track
   }
   /**
    * Label
    */
   func creatLabel() -> UXLabel {
      with(.init(style: .default)) {
         $0.textColor = .black
         $0.textAlignment = .left
         $0.text = "Hello world"
         self.addSubview($0)
         $0.centerVertically()
//         $0.anchorAndSize(to: self, height: 24, offset: .init(x: 20, y: 20), sizeOffset: .init(width: -40, height: 0))
      }
   }
   /**
    * TextInput
    */
   func createTextInput() -> TextInputComposite {
      with(.init(label: "Label", input: "input", style: .default)) {
         self.addSubview($0)
//         $0.anchorAndSize(to: label, sizeTo: self, height: 24, align: .topLeft, alignTo: .bottomLeft, offset: .init(x: 0, y: 20), sizeOffset: .init(width: -40, height: 0))
      }
   }
   /**
    * TextComponent
    */
   func createTextComponent() -> TextButtonComposite {
      with(.init(labelText: "Label", buttonText: "Button", style: .default)) {
         self.addSubview($0)
//         $0.anchorAndSize(to: textInput, sizeTo: self, height: 24, align: .topLeft, alignTo: .bottomLeft, offset: .init(x: 0, y: 20), sizeOffset: .init(width: -40, height: 0))
      }
   }
   /**
    * Switch
    * - Fixme: ⚠️️ make 1.5x size, add border style etc
    */
   func createSwitchComponent() -> SwitchComposite {
      with(.init(text: "Toggle: ", selected: false, style: .default)) {
         self.addSubview($0)
//         $0.anchorAndSize(to: textButtonComponent, sizeTo: self, height: 32, align: .topLeft, alignTo: .bottomLeft, offset: .init(x: 0, y: 20), sizeOffset: .init(width: -40, height: 0))
      }
   }
   /**
    * CheckBoxComponent
    * - Fixme: ⚠️️ Add some padding to the inner graphic, use dark gray
    */
   func createCheckBoxComponent() -> CheckBoxComposite {
      with(.init(text: "CheckBox: ", selected: false, style: .default)) {
         self.addSubview($0)
//         $0.anchorAndSize(to: switchComponent, sizeTo: self, height: 32, align: .topLeft, alignTo: .bottomLeft, offset: .init(x: 0, y: 20), sizeOffset: .init(width: -40, height: 0))
      }
   }
   /**
    * SliderComponent
    */
   func createSliderComponent() -> SliderComposite {
      with(.init(text: "Slider: ", style: .default)) {
         self.addSubview($0)
//         $0.anchorAndSize(to: checkBoxComponent, sizeTo: self, height: 32, align: .topLeft, alignTo: .bottomLeft, offset: .init(x: 0, y: 20), sizeOffset: .init(width: -40, height: 0))
      }
   }
}
