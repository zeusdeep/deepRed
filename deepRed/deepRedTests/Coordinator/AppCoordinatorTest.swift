//
//  AppCoordinatorTest.swift
//  deepRedTests
//
//  Created by Deep Parekh on 9/25/18.
//  Copyright © 2018 Deep Parekh. All rights reserved.
//

import XCTest
@testable import deepRed

class AppCoordinatorTest: XCTestCase {
    
    var appCoordinator: AppCoordinator?
    
    override func setUp() {
        appCoordinator = AppCoordinator()
    }
    
    func testStart() {
        XCTAssertNil(appCoordinator!.appViewController, "AppCoordinator View Controller not nil")
        XCTAssertNil(appCoordinator!.navigationController, "AppCoordinator Navigation Controller not nil")
        appCoordinator!.start(withAnimation: false)
        XCTAssertNotNil(appCoordinator!.appViewController, "AppCoordinator View Controller nil")
    }
    
    
    func testEnd() {
        appCoordinator!.start(withAnimation: false)
        XCTAssertNotNil(appCoordinator!.appViewController, "AppCoordinator View Controller nil")
        appCoordinator!.end(withAnimation: false)
        XCTAssertNil(appCoordinator!.appViewController, "AppCoordinator View Controller not nil")
        XCTAssertNil(appCoordinator!.navigationController, "AppCoordinator Navigation Controller not nil")
    }
    
    override func tearDown() {
        appCoordinator?.end(withAnimation: false)
        appCoordinator = nil
    }
    
}
