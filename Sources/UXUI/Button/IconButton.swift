import Cocoa
import With
import Spatial
/**
 * - Fixme: ⚠️️ Test this in example, and implement darkmode for images similar to ios
 */
open class IconButton: UXButton {
   public let iconURL: String
   public let isNamed: Bool
   public lazy var imageView: NSImageView = createImageView()
   public init(iconURL: String, isNamed: Bool = false, style: UXButton.Style = IconButton.emptyStyle, frame: CGRect = .zero) {
      self.iconURL = iconURL
      self.isNamed = isNamed
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
   @objc open func createImageView() -> NSImageView {
      with(.init()) {
         $0.image = isNamed ? NSImage(contentsOf: URL(fileURLWithPath: iconURL)) : NSImage(named: iconURL)
         addSubview($0)
         $0.anchorAndSize(to: self)
      }
   }
}
/**
 * Style
 */
extension IconButton {
   public static let emptyStyle: UXButton.Style = {
      .init(backgroundColor: .clear, borderColor: .clear, borderWidth: 0, isRounded: false)
   }()
}
