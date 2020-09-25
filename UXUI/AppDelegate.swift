import Cocoa
import With

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
   @IBOutlet weak var window: NSWindow!
   /**
    * Creates the view
    */
   lazy var view: NSView = createView()
   func applicationDidFinishLaunching(_ aNotification: Notification) {
      _ = view
   }
}
extension AppDelegate {
   /**
    * - Fixme: ⚠️️ use uxview instead?
    */
   func createView() -> View {
      with(.init(frame: window.contentRect(forFrameRect: window.frame))) {
         window.contentView = $0
         $0.layer?.backgroundColor = NSColor.white.cgColor
      }
   }
}
