//
//  StoryboardHelper.swift
//  CoordinatorPattern
//
//  Created by Ajeet N on 23/07/20.
//  Copyright © 2020 Ajeet N. All rights reserved.
//

import UIKit

protocol Storyboard {
    static func instanciate()->Self
}

extension Storyboard where Self: UIViewController{
    static func instanciate()->Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard.init(name: "Main", bundle: .main)
        let controller = storyboard.instantiateViewController(identifier: id)
        return controller as! Self
    }
}
