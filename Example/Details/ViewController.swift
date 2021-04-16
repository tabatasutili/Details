//
//  ViewController.swift
//  Details
//
//  Created by ssabrinasu on 04/15/2021.
//  Copyright (c) 2021 ssabrinasu. All rights reserved.
//

import UIKit
import Details
import API
import DataModels

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
     var viewController = DetailsViewController(sigla: String, price: String)
     self.navigationController?.pushViewController(viewController, animated: true)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
 
}
