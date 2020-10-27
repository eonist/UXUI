import Cocoa
/**
 * SwitchButton
 * - Abstract: On or off state (Looks like the classic switch toggle in iOS)
 * - Note: A label and a switch
 *  - Fixme: ⚠️️ rename to ....Composite?
 */
open class SwitchComposite: UXView {
   lazy var label: UXLabel = createLabel() // text lable
   public lazy var switcher: UXSwitch = createSwitch() // right switch
   let text: String // initial text
   let style: Style // on / off style
   open var selected: Bool { didSet { switcher.selected = selected } }
   /**
    * Initiate
    * - Parameters:
    *   - text: Title text
    *   - selected: on or off
    *   - style: lable and switch style
    */
   public init(text: String = "Text", selected: Bool = false, style: Style = .default) {
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
