//
//  ViewController.swift
//  FantasticView
//
//  Created by Cody Fazio on 9/12/17.
//  Copyright © 2017 Cody Fazio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let fantasticView = FantasticView(frame: self.view.bounds)
        
        self.view.addSubview(fantasticView)
    }
}

