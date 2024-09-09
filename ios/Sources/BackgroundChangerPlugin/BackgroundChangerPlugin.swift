import Foundation
import Capacitor

@objc(BackgroundColorPlugin)
public class BackgroundColorPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "BackgroundColorPlugin"
    public let jsName = "BackgroundColor"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "changeBackgroundColor", returnType: CAPPluginReturnPromise)
    ]
    private let implementation: BackgroundChanger = BackgroundChanger()

    @objc func changeBackgroundColor(_ call: CAPPluginCall) {
        guard let color = call.getString("color") else {
            call.reject("Must provide a color")
            return
        }

        let result = implementation.changeBackgroundColor(color)
        call.resolve([
            "changed": result
        ])
    }
}