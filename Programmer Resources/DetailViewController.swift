//
//  DetailViewController.swift
//  Programmer Resources
//
//  Created by Paul Baker on 3/19/19.
//  Copyright © 2019 Paul Baker. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    // Useful for for updating title names
    var resource: Resource! {
    didSet {
        navigationItem.title = resource.name
        }
    }
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var descr: UILabel!
    @IBOutlet weak var url: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        name!.text = resource.name
        descr.text = resource.description
        url.text = resource.url.absoluteString
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action:
            #selector(DetailViewController.showWeb))
        
        url.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc func showWeb() {
        performSegue(withIdentifier: "showWebView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showWebView" {
            let webView = segue.destination as! WebViewController
            webView.url = resource.url
        }
    }
}
