//
//  AppDelegate.swift
//  deepRed
//
//  Created by Deep Parekh on 9/25/18.
//  Copyright © 2018 Deep Parekh. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        #if TEST
        window?.rootViewController = UINavigationController(rootViewController: UIViewController())
        #else
        let appCoordinator = AppCoordinator()
        appCoordinator.start(withAnimation: true)
        guard let rootViewController = appCoordinator.viewController else {
            return false
        }
        window?.rootViewController = UINavigationController(rootViewController: rootViewController)
        #endif
        window?.makeKeyAndVisible()
        return true
    }
}

