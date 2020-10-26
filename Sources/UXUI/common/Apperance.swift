import Foundation
/**
 * A central location to store light/dark-mode value in macOS
 * - Fixme: ⚠️️ add support for catalina: https://stackoverflow.com/a/57429660/5389500
 * - Fixme: ⚠️️ make it react to os changes: https://github.com/ruiaureliano/macOS-Appearance/blob/master/Appearance/Source/AppDelegate.swift
 * - Note: article about the new auto mode: https://medium.com/@ruiaureliano/check-light-dark-appearance-for-macos-mojave-catalina-fb2343af875f
 * - Note: uses notification center to detect mode change: https://stackoverflow.com/questions/39048894/how-to-detect-switch-between-macos-default-dark-mode-using-swift-3
 */
enum Apperance : String {
   case Dark, Light
}
extension Apperance {
   init() {
      let type = UserDefaults.standard.string(forKey: "AppleInterfaceStyle") ?? "Light"
      self = Apperance(rawValue: type)!
   }
   var inDarkMode: Bool {
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
