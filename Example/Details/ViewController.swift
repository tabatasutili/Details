//
//  ViewController.swift
//  Details
//
//  Created by ssabrinasu on 04/15/2021.
//  Copyright (c) 2021 ssabrinasu. All rights reserved.
//

import UIKit
import Details

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        let viewController = DetailsViewController(nome: "aaaa")
        
     self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

}
