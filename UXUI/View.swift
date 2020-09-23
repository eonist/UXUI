import Cocoa

open class View: NSView {
   override open var isFlipped: Bool { return true }/*TopLeft orientation*/
   override public init(frame: CGRect) {
      super.init(frame: frame)
      Swift.print("hello world")
      self.wantsLayer = true/*if true then view is layer backed*/
   }
   /**
    * Boilerplate
    */
   public required init?(coder decoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
extension View {
   /**
    *
    */
   func label() {
      let label = NSLabel(frame: .init(x: 0, y: 0, width: 120, height: 24))
      label.textColor = NSColor.black
      label.textAlignment = .center
      label.text = "Hello world"
      self.addSubview(label)
   }
   /**
    *
    */
   func switchComponent() {
      let switchComponent: SwitchComponent = .init(text: "Toggle: ", selected: false)
      self.addSubview(switchComponent)
      switchComponent.anchorAndSize(to: self, /*width: 200,*/ height: 32, offset: .init(x: 20, y: 20), sizeOffset: .init(width: -40, height: 0))
   }
}
