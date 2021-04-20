//
//  ViewController.swift
//  Details
//
//  Created by ssabrinasu on 04/15/2021.
//  Copyright (c) 2021 ssabrinasu. All rights reserved.
//

import UIKit
import Details
import LucasCoinAPI
import DataModels

class ViewController: UIViewController {
    
    
    var coins: [Coin] = []
    var allCoins: [Coin] = []


    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()

        let coin = coins[2]
       
        var viewController = DetailsViewController(coin: coin)
     self.navigationController?.pushViewController(viewController, animated: true)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func fetchData() {
        allCoins = API.requestCoinList()
        coins = allCoins
    }
 
}
