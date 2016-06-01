//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Martín Montes Pérez on 29/05/16.
//  Copyright © 2016 Martín Montes Pérez. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var products: [Product]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = Product()
        let p2 = Product()
        let p3 = Product()
        let p4 = Product()
        
        p1.name = "iPhone 6"
        p1.productImage = "phone-fullscreen1"
        p1.cellImage = "image-cell1"
        p2.name = "iPhone 6 S"
        p2.productImage = "phone-fullscreen2"
        p2.cellImage = "image-cell2"
        p3.name = "Nexus 6"
        p3.productImage = "phone-fullscreen3"
        p3.cellImage = "image-cell3"
        p4.name = "Samsung Galaxy S6"
        p4.productImage = "phone-fullscreen4"
        p4.cellImage = "image-cell4"
        
        products = [p1,p2,p3,p4]
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        if let p = products {
            return p.count
        }
        return 0
    }
    
    override func tableView(tableView: UITableView,
                            cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell",
                                                               forIndexPath: indexPath)
    
        let productName = products?[indexPath.row]
        if let p = productName {
        	cell.textLabel?.text = p.name
            if let i = p.cellImage{
                cell.imageView?.image = UIImage(named: i)
            }
        }
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "ShowProduct" {
            let productVC = segue.destinationViewController as? ProductViewController
            guard let cell = sender as? UITableViewCell,
            let indexPath = tableView.indexPathForCell(cell) else {
                return
            }
            if let product = products?[indexPath.row] {
                productVC?.product = product
            }
        }
    }
}
