//
//  ContactViewController.swift
//  GoodAsOldPhones
//
//  Created by Martín Montes Pérez on 22/05/16.
//  Copyright © 2016 Martín Montes Pérez. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.addSubview(scrollView)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        scrollView.contentSize = CGSize(width: 375,height: 800)
    }

}
