//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by Martín Montes Pérez on 22/05/16.
//  Copyright © 2016 Martín Montes Pérez. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        productNameLabel.text = "1937 Desk Phone"
        productImageView.image = UIImage(named: "phone-fullscreen3")
    }

    @IBAction func addToCartPressed(sender: AnyObject){
        print("Button Tapped")
    }
}
