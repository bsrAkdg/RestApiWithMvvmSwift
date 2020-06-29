//
//  CryptoTableViewCell.swift
//  CryptoCrazy
//
//  Created by Büşra Serdaroğlu on 24.06.2020.
//  Copyright © 2020 Busra Serdaroglu. All rights reserved.
//

import UIKit

class CryptoTableViewCell: UITableViewCell {
    @IBOutlet weak var currencyText: UILabel!
    @IBOutlet weak var priceText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
