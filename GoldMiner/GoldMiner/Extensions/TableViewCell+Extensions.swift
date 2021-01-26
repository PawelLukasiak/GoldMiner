//
//  TableViewCell+Extensions.swift
//  GoldMiner
//
//  Created by Pawel on 25/01/2021.
//

import UIKit

extension UITableViewCell {
    
    static var reuseIdentifier: String {
        return NSStringFromClass(self)
    }
    
}
