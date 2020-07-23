//
//  BuyCoordinator.swift
//  CoordinatorPattern
//
//  Created by Ajeet N on 23/07/20.
//  Copyright © 2020 Ajeet N. All rights reserved.
//

import UIKit

class BuyCoordinator: Coordinator {
    weak var mainCoordinator: MainCoordinator?
    var child = [Coordinator]()
    var navigation: UINavigationController
    
    init(navigation:UINavigationController) {
        self.navigation = navigation
    }
    
    func start() {
        let vc = BuyViewController.instanciate()
        vc.coordinator = self
        navigation.pushViewController(vc, animated: true)
    }
    
//    func dismissBuyController(){
//        self.mainCoordinator?.buyDidFinish(self)
//    }
}
