import Cocoa
/**
 * SwitchButton
 * - Abstract: On or off state (Looks like the classic switch toggle in iOS)
 */
open class SwitchComponent: UXView {
   lazy var label: NSLabel = createLabel() // text lable
   public lazy var switcher: NSSwitch = createSwitch() // right switch
   let text: String // initial text - Fixme: ⚠️️ rename to initText ?
   // - Fixme: ⚠️️ rename to just style
   let switchStyles: NSSwitch.SwitchStyles // on / off style
   open var selected: Bool { didSet { switcher.selected = selected } }
   /**
    * Initiate
    * - Parameters:
    *   - text: Title text
    *   - selected: on or off
    *   - switchStyles: on / off style
    */
   public init(text: String = "Test", selected: Bool = false, switchStyles: NSSwitch.SwitchStyles = NSSwitch.defaultSwitchStyles) {
      self.text = text
      self.selected = selected
      self.switchStyles = switchStyles
      super.init(frame: .zero)
      self.wantsLayer = true // if true then view is layer backed
//      layer?.backgroundColor = NSColor.orange.cgColor
      _ = switcher
      _ = label
   }
}
