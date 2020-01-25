//
//  ContainerViewController.swift
//  Side Menu
//
//  Created by Jesse Ruiz on 12/22/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    var sideMenuOpen: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Methods
    func toggleSideMenu() {
        if sideMenuOpen {
            sideMenuConstraint.constant = -285
        } else {
            sideMenuConstraint.constant = 0
        }
    }
}
