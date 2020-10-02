//
//  FoodTableViewCell.swift
//  TableViewExample
//
//  Created by Yamusa Dalhatu on 9/24/20.
//

import UIKit

class FoodTableViewCell: UITableViewCell {

    @IBOutlet weak var coffeeShopName: UILabel!
    @IBOutlet weak var coffeeShopLocation: UILabel!
    @IBOutlet weak var coffeeShopType: UILabel!
    @IBOutlet weak var coffeeShopImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
