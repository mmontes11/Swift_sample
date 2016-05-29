//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Martín Montes Pérez on 29/05/16.
//  Copyright © 2016 Martín Montes Pérez. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 5
    }
    
    override func tableView(tableView: UITableView,
                            cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell",
                                                               forIndexPath: indexPath)
    
        cell.textLabel?.text = "Hei"
        cell.imageView?.image = UIImage(named: "image-cell1")
        
        return cell
    }
}
