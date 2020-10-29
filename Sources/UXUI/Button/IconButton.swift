import Cocoa
import With
import Spatial
/**
 * - Fixme: ⚠️️ Test this in example, and implement darkmode for images similar to ios
 */
open class IconButton: UXButton {
   let iconURL: URL
   lazy var imageView: NSImageView = createImageView()
   public init(style: UXButton.Style = .default, iconURL: URL, frame: CGRect = .zero) {
      self.iconURL = iconURL
      super.init(style: style, frame: frame)
      _ = imageView
   }
}
/**
 * Create
 */
extension IconButton {
   /**
    * Create imageView
    */
   func createImageView() -> NSImageView {
      with(.init()) {
         $0.image = NSImage(contentsOf: iconURL)
         addSubview($0)
         $0.anchorAndSize(to: self)
      }
   }
}
/**
 * Layout
 */
//override open func layout() {
//   super.layout()
//}
