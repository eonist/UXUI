# UXUI

Programatic UI library for MacOS


### Examples:
```swift
// Label
let label = NSLabel(frame: .init(x: 0, y: 0, width: 120, height: 24))
label.textColor = NSColor.black
label.textAlignment = .center
label.text = "Hello world"
self.addSubview(label)

// Switch
let switchComponent: SwitchComponent = .init(text: "Darkmode:", selected: false)
self.addSubview(switchComponent)
switchComponent.anchorAndSize(to: self, height: 44)
```
