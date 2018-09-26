//
//  Coordinator.swift
//  deepRed
//
//  Created by Deep Parekh on 9/25/18.
//  Copyright © 2018 Deep Parekh. All rights reserved.
//

import UIKit
protocol Coordinator {
    
    var viewController: UIViewController? { get }
    
    var navigationController: UINavigationController? { get }
    
    var childCoordinators: [Coordinator]? { get }
    
    var parentCoordinator: Coordinator? { get }
    
    func start(withAnimation animation: Bool)
    
    func end(withAnimation animation: Bool)
    
    func childDidEnd(child: Coordinator)
    
}

extension Coordinator {
    
    var viewController: UIViewController? {
        return nil
    }
    
    var navigationController: UINavigationController? {
        return nil
    }
    
    var parentCoordinator: Coordinator? {
        return nil
    }
    
    var childCoordinators: [Coordinator]? {
        return nil
    }
    
    func childDidEnd(child: Coordinator) {
        // NO-OP
    }
}
