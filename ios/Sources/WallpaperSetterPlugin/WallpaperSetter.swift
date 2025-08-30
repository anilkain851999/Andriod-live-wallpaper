import Foundation

@objc public class WallpaperSetter: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
