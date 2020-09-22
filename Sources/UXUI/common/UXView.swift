import Cocoa

open class UXView: NSView {
   override open var isFlipped: Bool { true }
   /**
    * - Note: Needed or else init(coder) method doesn't work for some reason
    */
   override public init(frame: CGRect = .zero) {
      super.init(frame: frame)
   }
   /**
    * - Note: Avoid having to repeat this method in every subclass that uses :UIView / :NSView
    */
   @available(*, unavailable)
   public required init?(coder: NSCoder) {
      fatalError("init?(coder:) is not supported")
   }
}
