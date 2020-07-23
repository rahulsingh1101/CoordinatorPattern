//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Ajeet N on 23/07/20.
//  Copyright © 2020 Ajeet N. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
    var child = [Coordinator]()
    var navigation: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigation = navigationController
    }
    
    func start() {
        let vc = ViewController.instanciate()
        vc.coordinator = self
        navigation.pushViewController(vc, animated: true)
    }
    
    func buySubscription(){
        let vc = BuyViewController.instanciate()
        vc.coordinator = self
        navigation.pushViewController(vc, animated: true)
    }
    
    func cartSubscription(){
        let vc = CartViewController.instanciate()
        vc.coordinator = self
        navigation.pushViewController(vc, animated: true)
    }
}
