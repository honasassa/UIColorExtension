UIColorExtension
================

UIColor extension for swift. Provide some conveniecnce UIColor methods for swift.


Sample + Example
================

Example output 

```swift

UIColor(hex: 0xFF0000) // 1.0, 0.0, 0.0 RGB
UIColor(hexa: 0xFF0000FF) // 1.0, 0.0, 0.0, 1.0 RGBA
UIColor(red255: 255, green255: 0, blue255: 0, alpha255: 0) // 1.0, 0.0, 0.0, 0.0 RGBA
UIColor.colorHexa(0xFF00FFFF) // 1.0, 0.0, 0.0, 0.0 RGBA
UIColor.colorHex(0xFF00FF) // 1.0, 0.0, 0.0, 0.0 RGB
        
UIColor.random(); // output random rgb color (alpha = 1.0)
UIColor.randoma(); // output random rgba color

```
