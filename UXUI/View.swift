import Cocoa
import With
import Spatial

open class View: UXView {
   lazy var label: UXLabel = creatLabel()
   lazy var switchComponent: SwitchComponent = createSwitchComponent()
   lazy var textInput: UXTextInput = createTextInput()
   lazy var textButtonComponent: TextButtonComponent = createTextComponent()
   lazy var checkBoxComponent: CheckBoxComponent = createCheckBoxComponent()
   /**
    * Init
    */
   override public init(frame: CGRect) {
      super.init(frame: frame)
      Swift.print("hello world")
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
    */
   func createUI() {
      _ = label
      _ = switchComponent
      _ = textInput
      _ = textButtonComponent
      _ = checkBoxComponent
      // Slider Component
      // selectableTextButton component (on / off) ?
      // stepperComponent 100 (+1-1)
      // IconButton component (see Passbook project) (user icon)
      // add darkmode 👌
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
      with(.init(text: "Toggle: ", selected: false)) {
         self.addSubview($0)
         $0.anchorAndSize(to: label, sizeTo: self, height: 32, offset: .init(x: 0, y: 20), sizeOffset: .init(width: -40, height: 0))
      }
   }
   /**
    * TextInput
    */
   func createTextInput() -> UXTextInput {
      with(.init()) {
         self.addSubview($0)
         $0.anchorAndSize(to: switchComponent, sizeTo: self, height: 32, offset: .init(x: 0, y: 20), sizeOffset: .init(width: -40, height: 0))
      }
   }
   /**
    * TextComponent
    */
   func createTextComponent() -> TextButtonComponent {
      with(.init()) {
         self.addSubview($0)
         $0.anchorAndSize(to: textInput, sizeTo: self, height: 32, offset: .init(x: 0, y: 20), sizeOffset: .init(width: -40, height: 0))
      }
   }
   /**
    * CheckBoxComponent
    */
   func createCheckBoxComponent() -> CheckBoxComponent {
      with(.init()) {
         self.addSubview($0)
         $0.anchorAndSize(to: textButtonComponent, sizeTo: self, height: 32, offset: .init(x: 0, y: 20), sizeOffset: .init(width: -40, height: 0))
      }
   }
}
