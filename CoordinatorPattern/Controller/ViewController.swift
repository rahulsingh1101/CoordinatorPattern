//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Ajeet N on 22/07/20.
//  Copyright © 2020 Ajeet N. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboard {

    weak var coordinator: MainCoordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buyAction(_ sender: UIButton) {
        coordinator?.buySubscription()
    }
    
    
    @IBAction func cartAction(_ sender: UIButton) {
        coordinator?.cartSubscription()
    }
    
}

