import Flutter
import UIKit
import Navigine

public class NavigineSdkPlugin: NSObject, FlutterPlugin {
  private var _viewFactory: NativeViewFactory

  init(registrar: FlutterPluginRegistrar) {
        _viewFactory = NativeViewFactory(messenger: registrar.messenger())
        registrar.register(_viewFactory, withId: "flutter_navigine_view_factory")
  }

  public static func register(with registrar: FlutterPluginRegistrar) {

      let channel = FlutterMethodChannel(name: "flutter_navigine_sdk/view", binaryMessenger: registrar.messenger())
      let channel2 = FlutterMethodChannel(name: "flutter_navigine_sdk/navigine_sdk", binaryMessenger: registrar.messenger())
      let instance = NavigineSdkPlugin(registrar: registrar)

      registrar.addMethodCallDelegate(instance, channel: channel)
      registrar.addMethodCallDelegate(instance, channel: channel2)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      if (call.method == "getViewPtr") {
          let args = call.arguments as! Dictionary<String, Any>
          let id = args["id"] as! Int64

          result(self._viewFactory.getViewPtr(id: id))
      } else if (call.method == "init") {
          result(nil)
      } else if (call.method == "startView") {
          let args = call.arguments as! Dictionary<String, Any>
          let id = args["id"] as! Int64

          self._viewFactory.startView(id: id)
          result(nil)
      }
  }
}
