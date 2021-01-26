//
//  ViewController.swift
//  GoldMiner
//
//  Created by Pawel on 24/01/2021.
//

import UIKit

class ProductsListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.registerCell(cellClass: ProductListViewCell.self)
    }
}

extension ProductsListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.dequeue(cellClass: ProductListViewCell.self, forIndexPath: indexPath)
    }
}
