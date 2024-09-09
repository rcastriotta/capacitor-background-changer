
import Foundation
import UIKit

@objc public class BackgroundChanger: NSObject {
    @objc public func changeBackgroundColor(_ color: String) -> Bool {
        DispatchQueue.main.async {
            if let keyWindow = UIApplication.shared.windows.first(where: { $0.isKeyWindow }),
               let color = UIColor(hexString: color) {
                keyWindow.backgroundColor = color
            }
        }
        return true
    }
}

extension UIColor {
    convenience init?(hexString: String) {
        let r, g, b, a: CGFloat

        if hexString.hasPrefix("#") {
            let start = hexString.index(hexString.startIndex, offsetBy: 1)
            let hexColor = String(hexString[start...])

            if hexColor.count == 6 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff0000) >> 16) / 255
                    g = CGFloat((hexNumber & 0x00ff00) >> 8) / 255
                    b = CGFloat(hexNumber & 0x0000ff) / 255
                    a = 1.0

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }

        return nil
    }
}