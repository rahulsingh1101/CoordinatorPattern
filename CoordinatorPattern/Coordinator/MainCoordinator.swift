//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Ajeet N on 23/07/20.
//  Copyright © 2020 Ajeet N. All rights reserved.
//

import UIKit

class MainCoordinator: NSObject, Coordinator {
    var child = [Coordinator]()
    var navigation: UINavigationController
    weak var buyCoordinator: BuyCoordinator?
    
    init(navigationController: UINavigationController) {
        self.navigation = navigationController
    }
    
    func start() {
        navigation.delegate = self
        let vc = ViewController.instanciate()
        vc.coordinator = self
        navigation.pushViewController(vc, animated: true)
    }
    
    func buySubscription(){
        let child = BuyCoordinator(navigation: navigation)
        child.mainCoordinator = self
        self.child.append(child)
        child.start()
    }
    
    func buyDidFinish(_ child: Coordinator?){
        for (index, coordinator) in self.child.enumerated() {
            if coordinator === child {
                self.child.remove(at: index)
                break
            }
        }
    }
    
    func cartSubscription(){
        let vc = CartViewController.instanciate()
        vc.coordinator = self
        navigation.pushViewController(vc, animated: true)
    }
}

extension MainCoordinator: UINavigationControllerDelegate{
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        guard let fromViewController = navigationController.transitionCoordinator?.viewController(forKey: .from) else {
            return
        }
        
        if navigationController.viewControllers.contains(fromViewController) {
            //  Means we are pushing the VC
            return
        }
        //  Means we are popping the VC
        if let buyVC = fromViewController as? BuyViewController {
            buyDidFinish(buyVC.coordinator)
        }
    }
}
