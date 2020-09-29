import Cocoa
/**
 * SwitchButton
 * - Abstract: On or off state (Looks like the classic switch toggle in iOS)
 */
open class SwitchComponent: UXView {
   lazy var label: UXLabel = createLabel() // text lable
   public lazy var switcher: UXSwitch = createSwitch() // right switch
   let text: String // initial text - Fixme: ⚠️️ rename to initText ?
   // - Fixme: ⚠️️ move style to this class scope
   let style: UXSwitch.SwitchStyles // on / off style
   open var selected: Bool { didSet { switcher.selected = selected } }
   /**
    * Initiate
    * - Parameters:
    *   - text: Title text
    *   - selected: on or off
    *   - switchStyles: on / off style
    */
   public init(text: String = "Test", selected: Bool = false, style: UXSwitch.SwitchStyles = .default) {
      self.text = text
      self.selected = selected
      self.style = style
      super.init(frame: .zero)
      self.wantsLayer = true // if true then view is layer backed
//      layer?.backgroundColor = NSColor.orange.cgColor
      _ = switcher
      _ = label
   }
}

// 🏀
   // add style
   // clear fixmes
   // create slick UIUX logo akin to Hybrid
