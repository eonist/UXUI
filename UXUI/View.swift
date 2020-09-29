import Cocoa
import With
import Spatial

open class View: UXView {
   lazy var label: UXLabel = creatLabel()
   lazy var switchComponent: SwitchComponent = createSwitchComponent()
   lazy var textInput: UXTextInput = createTextInput()
   lazy var textButtonComponent: TextButtonComponent = createTextComponent()
   lazy var checkBoxComponent: CheckBoxComponent = createCheckBoxComponent()
   lazy var sliderComponent: SliderComponent = createSliderComponent()
   /**
    * Init
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
    * - Fixme: ⚠️️ add darkmode (figure out how to detect darkmode in macos)
    */
   func createUI() {
      // 🏀 add the IconButton on top?
      _ = label
      _ = switchComponent
      _ = textInput
      _ = textButtonComponent
      _ = checkBoxComponent
      _ = sliderComponent
   }
   /**
    * Label
    */
   func creatLabel() -> UXLabel {
      with(.init()) {
         $0.textColor = .black
         $0.textAlignment = .center
         $0.text = "Hello world"
         self.addSubview($0)
         $0.centerVertically()
         $0.anchorAndSize(to: self, height: 24, offset: .init(x: 20, y: 20), sizeOffset: .init(width: -40, height: 0))
      }
   }
   /**
    * Switch
    */
   func createSwitchComponent() -> SwitchComponent {
      with(.init(text: "Toggle: ", selected: false, style: .default)) {
         self.addSubview($0)
         $0.anchorAndSize(to: label, sizeTo: self, height: 32, offset: .init(x: 0, y: 20), sizeOffset: .init(width: -40, height: 0))
      }
   }
   /**
    * TextInput
    */
   func createTextInput() -> UXTextInput {
      with(.init(label: "Label", input: "input", style: .default)) {
         self.addSubview($0)
         $0.anchorAndSize(to: switchComponent, sizeTo: self, height: 32, offset: .init(x: 0, y: 20), sizeOffset: .init(width: -40, height: 0))
      }
   }
   /**
    * TextComponent
    */
   func createTextComponent() -> TextButtonComponent {
      with(.init(labelText: "Label", buttonText: "Button", style: .default)) {
         self.addSubview($0)
         $0.anchorAndSize(to: textInput, sizeTo: self, height: 32, offset: .init(x: 0, y: 20), sizeOffset: .init(width: -40, height: 0))
      }
   }
   /**
    * CheckBoxComponent
    */
   func createCheckBoxComponent() -> CheckBoxComponent {
      with(.init(text: "CheckBox: ", selected: false, style: .default)) {
         self.addSubview($0)
         $0.anchorAndSize(to: textButtonComponent, sizeTo: self, height: 32, offset: .init(x: 0, y: 20), sizeOffset: .init(width: -40, height: 0))
      }
   }
   /**
    * SliderComponent
    */
   func createSliderComponent() -> SliderComponent {
      with(.init(text: "Slider: ", style: .default)) {
         self.addSubview($0)
         $0.anchorAndSize(to: textButtonComponent, sizeTo: self, height: 32, offset: .init(x: 0, y: 20), sizeOffset: .init(width: -40, height: 0))
      }
   }
}
