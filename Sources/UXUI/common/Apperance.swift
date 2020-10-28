import Foundation
/**
 * A central location to store light/dark-mode value in macOS
 * - Fixme: ⚠️️ add support for catalina: https://stackoverflow.com/a/57429660/5389500
 * - Fixme: ⚠️️ make it react to os changes: https://github.com/ruiaureliano/macOS-Appearance/blob/master/Appearance/Source/AppDelegate.swift
 * - Note: article about the new auto mode: https://medium.com/@ruiaureliano/check-light-dark-appearance-for-macos-mojave-catalina-fb2343af875f
 * - Note: uses notification center to detect mode change: https://stackoverflow.com/questions/39048894/how-to-detect-switch-between-macos-default-dark-mode-using-swift-3
 */
public enum Apperance : String {
   case Dark, Light
}
extension Apperance {
   public init() {
      let type = UserDefaults.standard.string(forKey: "AppleInterfaceStyle") ?? "Light"
      self = Apperance(rawValue: type)!
   }
   public var inDarkMode: Bool {
      let currentStyle = Apperance()
      if case .Dark = currentStyle {
         return true
      } else if case .Light = currentStyle {
         return false
      } else {
         fatalError("Not supported")
      }
   }
}
/**
 * Detect dark mode change
 */
final public class ChangeDetector {
   public static var onInterfaceChange: () -> Void = {}
   /**
    * Detect dark mode change
    */
   public static func activateChangeCallback() {
      // Detect dark mode change
      DistributedNotificationCenter.default.addObserver(self, selector: #selector(interfaceModeChanged), name: .AppleInterfaceThemeChangedNotification, object: nil)
   }
   /**
    * Detect dark mode change
    */
   @objc static func interfaceModeChanged() {
      // Do stuff.
//      Swift.print("interface changed")
      onInterfaceChange()
   }
}
/**
 * Needed for darkmode support
 */
extension Notification.Name {
   static let AppleInterfaceThemeChangedNotification = Notification.Name("AppleInterfaceThemeChangedNotification")
}
