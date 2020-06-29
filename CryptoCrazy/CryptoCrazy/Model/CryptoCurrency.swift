//
//  CryptoCurrency.swift
//  CryptoCrazy
//
//  Created by Büşra Serdaroğlu on 29.06.2020.
//  Copyright © 2020 Busra Serdaroglu. All rights reserved.
//

import Foundation

// Decodable : response object auto decode
// Encodable : request object auto encode
// Codable : the samerequest-response object (Decodable and Encodable)
struct CryptoCurrency : Decodable {
    let currency: String
    let price: String
}
