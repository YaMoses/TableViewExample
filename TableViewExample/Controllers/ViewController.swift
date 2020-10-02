//
//  ViewController.swift
//  TableViewExample
//
//  Created by Yamusa Dalhatu on 9/24/20.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
 
    
    @IBOutlet weak var tableView: UITableView!
    
//
//    var coffeeShopNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
//
//    var coffeeShopImages = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg", "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg", "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg", "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg", "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg", "donostia.jpg", "royaloak.jpg", "caskpubkitchen.jpg"]
//
//    var coffeeShopLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney", "New York", "New York", "New York", "New York", "New York", "New York", "New York", "London", "London", "London", "London"]
//
//      var coffeeShopTypes = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian / Causual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American / Seafood", "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee & Tea", "Latin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]

    var coffeeShops:[CoffeeShop] = [
       CoffeeShop(name: "Cafe Deadend", image: "cafedeadend.jpg", location: "Hong Kong", type: "Coffee & Tea Shop"),
        CoffeeShop(name: "Homei", image: "homei.jpg", location: "Hong Kong", type: "Cafe"),
        CoffeeShop(name: "Teakha", image: "teakha.jpg", location: "Hong Kong", type: "Tea House"),
        CoffeeShop(name: "Cafe Loisl", image: "cafeloisl.jpg", location: "Paris", type: "Austrian / Causual Drink"),
        CoffeeShop(name: "Petite Oyster", image: "petiteoyster.jpg", location: "Sydney", type:  "French"),
        CoffeeShop(name:  "For Kee Restaurant", image: "forkeerestaurant.jpg", location: "Stockholm", type: "Bakery"),
        CoffeeShop(name: "Po's Atelier", image: "posatelier.jpg", location: "Dublin", type: "Bakery"),
        CoffeeShop(name: "Bourke Street Bakery", image: "bourkestreetbakery.jpg", location: "Brussel", type: "Chocolate"),
        CoffeeShop(name: "Haigh's Chocolate", image: "haighschocolate.jpg", location: "New York", type: "American / Seafood"),
        CoffeeShop(name: "Palomino Espresso", image: "palominoespresso.jpg", location: "London", type: "British"),
        CoffeeShop(name: "Upstate", image: "upstate.jpg", location: "Shanghai", type: "Chinese"),
        CoffeeShop(name: "Traif", image: "traif.jpg", location: "California", type: "American"),
        CoffeeShop(name: "Graham Avenue Meats", image: "grahamavenuemeats.jpg", location: "Dallas", type: "Spanish"),
        CoffeeShop(name: "Waffle & Wolf", image: "wafflewolf.jpg", location: "Toronto", type: "Thai"),
        CoffeeShop(name: "Five Leaves", image: "fiveleaves.jpg", location: "Kinsasha", type: "African"),
        CoffeeShop(name: "Cafe Lore", image: "cafelore.jpg", location: "Cape town", type: "British"),
        CoffeeShop(name: "Confessional", image: "confessional.jpg", location: "Milan", type: "Italian"),
        CoffeeShop(name: "Barrafina", image: "barrafina.jpg", location: "Barcelona", type: "Spanish"),
        CoffeeShop(name: "Donostia", image: "donostia.jpg", location: "Hanoi", type: "Vietnamese"),
        CoffeeShop(name: "Royal Oak", image: "royaloak.jpg", location: "Brisbane", type: "COriental"),
        CoffeeShop(name: "CASK Pub and Kitchen", image:  "caskpubkitchen.jpg", location: "Tokyo", type: "Japanese")
        
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
        self.tableView.estimatedRowHeight = 101
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       return UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coffeeShops.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "cell"
        
        let ourCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! FoodTableViewCell
        
       // ourCell.textLabel?.text = coffeeShops[indexPath.row].name
        ourCell.coffeeShopName?.text = coffeeShops[indexPath.row].name
        ourCell.coffeeShopLocation?.text = coffeeShops[indexPath.row].location
        ourCell.coffeeShopType?.text = coffeeShops[indexPath.row].type
        ourCell.coffeeShopImage?.image = UIImage(named: coffeeShops[indexPath.row].image)
        ourCell.coffeeShopImage?.layer.cornerRadius = 10
        ourCell.coffeeShopImage?.clipsToBounds = true
        
        
        return ourCell
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

//        We created an instance of class CoffeeShop in DetailViewController,
//        we need something to hold CoffeeShop Data because  that is
//        what we are sending in Prepare for segue
        if let destination = segue.destination as? DetailViewController{
            destination.shops = coffeeShops[(tableView.indexPathForSelectedRow?.row)!]
            tableView.deselectRow(at: tableView.indexPathForSelectedRow!, animated: true)

        }

    }
  
}
