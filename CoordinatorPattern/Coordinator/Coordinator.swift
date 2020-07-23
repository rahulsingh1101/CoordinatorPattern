//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Ajeet N on 23/07/20.
//  Copyright © 2020 Ajeet N. All rights reserved.
//

import UIKit

protocol Coordinator {
    var child: [Coordinator] { get set }
    var navigation: UINavigationController { get set }
    
    func start()
}
