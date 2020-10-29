![mit](https://img.shields.io/badge/License-MIT-brightgreen.svg)
![platform](https://img.shields.io/badge/Platform-macOS-blue.svg)
![Lang](https://img.shields.io/badge/Language-Swift%205.0-orange.svg)
[![SPM compatible](https://img.shields.io/badge/SPM-compatible-4BC51D.svg?style=flat)](https://github.com/apple/swift)
![Swift](https://github.com/eonist/Spatial/workflows/Swift/badge.svg)  
[![codebeat badge](https://codebeat.co/badges/dee7c60e-53c3-4136-96b2-dc9f9857262d)](https://codebeat.co/projects/github-com-eonist-uxui-master)
![Tests](https://github.com/eonist/UXUI/workflows/Tests/badge.svg)

<img width="200" alt="img" src="https://github.com/stylekit/img/blob/master/uxui_logo2.svg?raw=true">  

### Features:
- LightMode / DarkMode via [DarkMode](https://github.com/passguardapp/DarkMode)
- Autolayout via [Spatial](https://github.com/eonist/Spatial)
- Struct based component styling
- Closure based callbacks for UI-events

<img width="447" alt="img" src="https://github.com/stylekit/img/blob/master/uxui.gif?raw=true">

### Examples:
```swift
// Label
let label = UXLabel(frame: .init(x: 0, y: 0, width: 120, height: 24))
label.textColor = NSColor.black
label.textAlignment = .center
label.text = "Hello world"
self.addSubview(label)

// Switch-component
let switchComponent: SwitchComponent = .init(text: "Darkmode:", selected: false)
self.addSubview(switchComponent)
switchComponent.anchorAndSize(to: self, height: 44)
```
