import UIKit

    class SceneDelegate: UIResponder, UIWindowSceneDelegate {
        var window: UIWindow?

        func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
            guard let windowScene = (scene as? UIWindowScene) else { return }
            
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = TabBarViewController() // 자신의 시작 ViewController
            window.makeKeyAndVisible()
            self.window = window
        }
    }
