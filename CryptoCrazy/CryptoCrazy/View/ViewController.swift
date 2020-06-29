//
//  ViewController.swift
//  CryptoCrazy
//
//  Created by Büşra Serdaroğlu on 24.06.2020.
//  Copyright © 2020 Busra Serdaroglu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let url = URL(string : "https://raw.githubusercontent.com/atilsamancioglu/K21-JSONDataSet/master/crypto.json")!
        
        NetworkService().downloadCurrencies(url: url) { (cryptoList) in
            if let cryptoList = cryptoList {
                
            }
        }
        
    
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CryptoCell", for: indexPath) as! CryptoTableViewCell
        cell.currencyText.text = "Currency text"
        cell.priceText.text = "Price text"
        return cell
    }

}

