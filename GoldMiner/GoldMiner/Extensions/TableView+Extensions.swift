//
//  TableView+Extensions.swift
//  GoldMiner
//
//  Created by Pawel on 25/01/2021.
//

import UIKit

extension UITableView {
    
    func registerCell<T: UITableViewCell>(cellClass: T.Type, identifier: String? = nil) {
        let identifier = cellClass.reuseIdentifier
        register(cellClass, forCellReuseIdentifier: identifier)
    }
    
    func registerNibCell<T: UITableViewCell>(cellClass: T.Type, identifier: String? = nil) {
        let cellId = cellClass.reuseIdentifier
        register(UINib(nibName: cellId, bundle: nil), forCellReuseIdentifier: identifier ?? cellId)
    }
    
    public func dequeue<T: UITableViewCell>(cellClass: T.Type) -> T? {
        return dequeueReusableCell(withIdentifier: cellClass.reuseIdentifier) as? T
    }

    public func dequeue<T: UITableViewCell>(cellClass: T.Type, forIndexPath indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(
            withIdentifier: cellClass.reuseIdentifier, for: indexPath) as? T else {
                fatalError(
                    "Error: cell with id: \(cellClass.reuseIdentifier) for indexPath: \(indexPath) is not \(T.self)")
        }
        return cell
    }
}

