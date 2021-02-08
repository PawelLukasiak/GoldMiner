//
//  TableViewCell+Extensions.swift
//  GoldMiner
//
//  Created by Pawel on 25/01/2021.
//

import UIKit

protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UITableViewCell: ReusableView { }

extension UICollectionViewCell: ReusableView { }
