import UIKit
import BlowMindStyle

enum Step {
    case firstStyle
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()

        let viewController = createViewController(for: .firstStyle)
        let navigationController = UINavigationController(rootViewController: viewController)

        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        return true
    }

    func createViewController(for step: Step) -> UIViewController {
        switch step {
        case .firstStyle:
            let vc = ViewController1()
            vc.applyStylesOnLoad(for: AppEnvironmentProvider.shared.observableEnvironment)
            return vc
        }
    }
}

