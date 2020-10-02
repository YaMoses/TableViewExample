//
//  DetailViewController.swift
//  TableViewExample
//
//  Created by Yamusa Dalhatu on 10/2/20.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var coffeeShopImage: UIImageView!
    
    //To hold our incoming data
    var shops: CoffeeShop!

    @IBOutlet weak var coffeeShopName: UILabel!
    
    @IBOutlet weak var coffeeShopType: UILabel!
    
    @IBOutlet weak var coffeeShopLocation: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //When the view loads, we will make use of it here
        self.coffeeShopImage.image = UIImage(named: shops.image)
        self.coffeeShopName.text = shops.name
        self.coffeeShopType.text = shops.type
        self.coffeeShopLocation.text = shops.location

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
