//
//  Resource.swift
//  Programmer Resources
//
//  Created by Paul Baker on 3/19/19.
//  Copyright © 2019 Paul Baker. All rights reserved.
//

import Foundation

// The resource object that accesses the plist for the information
struct Resource {
    let name: String
    let description: String
    let url: URL
}


// The extension allows for specifying the object while keeping it separate
extension Resource {
    init (dictionary: [String: String]) {
        name = dictionary["name"]! as String
        description = dictionary["description"]! as String
        let urlString = dictionary["url"]! as String
        url = URL(string: urlString)!
    }
    
}
