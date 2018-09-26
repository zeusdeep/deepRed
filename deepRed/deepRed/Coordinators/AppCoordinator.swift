//
//  AppCoordinator.swift
//  deepRed
//
//  Created by Deep Parekh on 9/25/18.
//  Copyright © 2018 Deep Parekh. All rights reserved.
//

import UIKit
class AppCoordinator: Coordinator {
    
    var appViewController: UIViewController?
    var appChildCoordinators: [Coordinator]?
    var profileCoordinator: Coordinator?
    var matchCoordinator: Coordinator?
    
    var viewController: UIViewController? {
        return appViewController
    }
    
    var childCoordinators: [Coordinator]? {
        return appChildCoordinators
    }
    
    func start(withAnimation animation: Bool) {
        appViewController = FeedViewController()
        appChildCoordinators = [Coordinator]()
    }
    
    func end(withAnimation animation: Bool) {
        appViewController?.navigationController?.popViewController(animated: animation)
        appViewController = nil
    }
}
