import Cocoa
/**
 * - Abstract: This class is needed to enable UILabel like attributes for MacOS
 * - Fixme: ⚠️️ since this class isn't even public im sure we could scope it under Label ?
 */
class VerticallyAlignedTextFieldCell: NSTextFieldCell {
   let textHeight: CGFloat
   /**
    * - Fixme: ⚠️️ write doc
    * - Parameters:
    *   - textHeight: Height of text
    *   - string: text in cell
    */
   init(textHeight: CGFloat, textCell string: String) {
      self.textHeight = textHeight
      super.init(textCell: string)
      self.backgroundColor = .green
      self.drawsBackground = false
//      self.isBordered = true
//      self.border
   }
   /**
    * - Fixme: ⚠️️ write doc
    * - Note: the -3px part is a small fix, seems like if fontsize is 20, the height is 23 etc
    */
   override func drawingRect(forBounds rect: NSRect) -> NSRect {
      let newRect: NSRect = .init(x: 0, y: ((rect.size.height - textHeight) / 2) - 3, width: rect.size.width, height: rect.size.height - 3)
      return super.drawingRect(forBounds: newRect)
   }
   /**
    * Boilerplate
    */
   required init(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
