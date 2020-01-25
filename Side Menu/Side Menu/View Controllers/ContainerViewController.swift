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
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(toggleSideMenu),
                                               name: NSNotification.Name("ToggleSideMenu"),
                                               object: nil)
    }
    
    // MARK: Methods
    @objc func toggleSideMenu() {
        if sideMenuOpen {
            sideMenuOpen = false
            sideMenuConstraint.constant = -285
        } else {
            sideMenuOpen = true
            sideMenuConstraint.constant = 0
        }
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
}
