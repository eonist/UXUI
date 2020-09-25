import Cocoa
import With
import Spatial

open class View: UXView {
   lazy var label: UXLabel = creatLabel()
   lazy var switchComponent: SwitchComponent = createSwitchComponent()
   
   override public init(frame: CGRect) {
      super.init(frame: frame)
      Swift.print("hello world")
      self.wantsLayer = true // if true then view is layer backed
      createUI()
   }

}
extension View {
   /**
    * UI
    */
   func createUI() {
      _ = label
      _ = switchComponent
      // textInputComponent
      // SwitchComponent
      // TextButton
      // IconButton (see Passbook project)
      // SliderComponent
      // selectableTextButton?
   }
   /**
    * Label
    */
   func creatLabel() -> UXLabel {
      with(.init()) {
         $0.textColor = NSColor.black
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
}
