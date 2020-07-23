//
//  BuyViewController.swift
//  CoordinatorPattern
//
//  Created by Ajeet N on 23/07/20.
//  Copyright © 2020 Ajeet N. All rights reserved.
//

import UIKit

class BuyViewController: UIViewController, Storyboard {

    weak var coordinator: BuyCoordinator?
    var selectedProduct = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
