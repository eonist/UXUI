import Cocoa
import DarkMode
/**
 * App-color-scheme
 * - Note: only for internal testing
 * ## Examples:
 * Color.Text.header // white
 * Color.UI.Background.secondary // lightGray
 * - Fixme: ⚠️️ maybe even extend UIColor? .Text.title etc
 */
internal class Theme {
   struct Text {
      static let title: Color = .init(light: #colorLiteral(red: 0.043883726, green: 0.043883726, blue: 0.043883726, alpha: 1), dark: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
      static let header: Color = .init(light: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), dark: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
      static let button: Color = .systemBlue
      static let warning: Color = .systemRed
   }
   struct Button {
      static let primary: Color = .init(light: #colorLiteral(red: 0.7465752959, green: 0.742138803, blue: 0.749986589, alpha: 1), dark: #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1))
      static let secondary: Color = .init(light: #colorLiteral(red: 0.4756349325, green: 0.4756467342, blue: 0.4756404161, alpha: 1), dark: #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1))
      static let accessory: Color = .init(light: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), dark: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))
   }
   struct Switch {
      struct Selected {
         static let foreground: Color = .init(light: #colorLiteral(red: 0.9382238984, green: 0.9329113364, blue: 0.9589784741, alpha: 1), dark: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
         static let background: Color = .systemGreen
      }
      struct UnSelected {
         static let foreground: Color = .init(light: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), dark: #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1))
         static let background: Color = .init(light: #colorLiteral(red: 0.8282517791, green: 0.8219718337, blue: 0.8507606387, alpha: 1), dark: #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1))
      }
   }
   struct CheckBox {
      struct Checked {
         static let foreground: Color = .systemBlue
         static let background: Color = .init(light:#colorLiteral(red: 0.8282517791, green: 0.8219718337, blue: 0.8507606387, alpha: 1), dark: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
      }
      struct UnChecked {
         static let foreground: Color = .init(light: #colorLiteral(red: 0.9382238984, green: 0.9329113364, blue: 0.9589784741, alpha: 1), dark: #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1))
         static let background: Color = .init(light: #colorLiteral(red: 0.8282517791, green: 0.8219718337, blue: 0.8507606387, alpha: 1), dark: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
      }
   }
   struct VolumeSlider {
      static let thumb: Color = .init(light: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), dark: #colorLiteral(red: 0.7465752959, green: 0.742138803, blue: 0.749986589, alpha: 1))
      static let track: Color = .systemBlue
   }
   struct Background {
      static let primary: Color = .init(light: #colorLiteral(red: 0.9382238984, green: 0.9329113364, blue: 0.9589784741, alpha: 1), dark: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)) // it's not pure black
      static let secondary: Color = .init(light: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), dark: #colorLiteral(red: 0.08450166136, green: 0.08400709182, blue: 0.08488682657, alpha: 1))
      static let tertiary: Color = .init(light: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), dark: #colorLiteral(red: 0.1298420429, green: 0.1298461258, blue: 0.1298439503, alpha: 1))
   }
}
