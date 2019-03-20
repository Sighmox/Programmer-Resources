//
//  TableViewController.swift
//  Programmer Resources
//
//  Created by Paul Baker on 3/19/19.
//  Copyright © 2019 Paul Baker. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var resources: [Resource]!
    
    // This determines how many rows are needed
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resources.count
    }
    
    // This tells the tableview to reuse cells
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = resources![indexPath.row].name
        return cell
    }
    
    // This is the segue that goes from the table to the detail view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            let selectedRow = tableView.indexPathForSelectedRow!.row
            let selectedResource = resources![selectedRow]
            let detailController = segue.destination as! DetailViewController
            detailController.resource = selectedResource
        }
    }
}
