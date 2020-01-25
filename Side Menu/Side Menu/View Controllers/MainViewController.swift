//
//  MainViewController.swift
//  Side Menu
//
//  Created by Jesse Ruiz on 1/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Actions
    @IBAction func sideMenu(_ sender: UIBarButtonItem) {
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"),
                                        object: nil)
    }
    
}
