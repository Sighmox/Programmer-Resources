//
//  DetailViewController.swift
//  Programmer Resources
//
//  Created by Paul Baker on 3/19/19.
//  Copyright © 2019 Paul Baker. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var resource: Resource!
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var descr: UILabel!
    @IBOutlet weak var url: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        name!.text = resource.name
        descr.text = resource.description
        url.text = resource.url.absoluteString
    }
}
