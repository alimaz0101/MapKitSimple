//
//  TableViewController.swift
//  MapKitProject
//
//  Created by Alima Zhaksylyk on 11.08.2023.
//

import UIKit
import MapKit
import CoreLocation

class TableViewController: UITableViewController {
    
    var shops: [Shop] = [Shop(name: "FERRY BUILDING MARKETPLACE", imageName: "ferry", desc: "A popular destination for anyone.", coordinate: CLLocationCoordinate2D(latitude: 37.7955,                       longitude: -122.3936)),
                    Shop(name: "CHINATOWN", imageName: "chinatown", desc: "The oldest Chinatown in North America is a must-see for visitors and San Franciscans alike", coordinate: CLLocationCoordinate2D(latitude: 37.7945, longitude: -122.4048)),
                    Shop(name: "FILLMORE STREET", imageName: "fillmore_street", desc: "Shopping in bustling Chinatown is a unique and memorable San Francisco experience.", coordinate: CLLocationCoordinate2D(latitude: 37.7862, longitude: -122.4400)),
                    Shop(name: "FISHERMAN'S WHARF", imageName: "fishermans_wharf", desc: "Fisherman's Wharf offers all kinds of fun San Francisco shopping mementos to bring back home.", coordinate: CLLocationCoordinate2D(latitude: 37.8086, longitude: -122.4125)),
                    Shop(name: "GHIRARDELLI SQUARE", imageName: "ghirardelli_square", desc: "Shop until you drop is a fantastic day for the whole family at Ghirardelli Square because it offers such a soft landing!", coordinate: CLLocationCoordinate2D(latitude: 37.8060, longitude: -122.4233))
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shops.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShopCell", for: indexPath)

        cell.textLabel?.text = shops[indexPath.row].name
        cell.detailTextLabel?.text = shops[indexPath.row].desc

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let shop = shops[indexPath.row]
        let detailsViewController = ViewController(shop: shop)
        navigationController?.pushViewController(detailsViewController, animated: true)
    }

}
