//
//  SceneDelegate.swift
//  op.gg
//
//  Created by June on 2022/11/29.
//

import UIKit

    class SceneDelegate: UIResponder, UIWindowSceneDelegate {
        var window: UIWindow?

        func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
            guard let windowScene = (scene as? UIWindowScene) else { return }
            
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = MainViewController() // 자신의 시작 ViewController
            window.makeKeyAndVisible()
            self.window = window
        }
    }
