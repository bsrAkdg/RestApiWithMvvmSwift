//
//  NetworkService.swift
//  CryptoCrazy
//
//  Created by Büşra Serdaroğlu on 29.06.2020.
//  Copyright © 2020 Busra Serdaroglu. All rights reserved.
//

import Foundation

// @escaping : return function when url request completed
class NetworkService {
    
    func downloadCurrencies(url: URL, completion: @escaping([CryptoCurrency]?) -> ()) {
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                // [CryptoCurrency].self is protocol
                let cryptoList = try? JSONDecoder().decode([CryptoCurrency].self, from: data)
                
                print(cryptoList)
                
                if let cryptoList = cryptoList {
                    completion(cryptoList)
                }
                
            }
        }.resume() // start url session
    }
}
