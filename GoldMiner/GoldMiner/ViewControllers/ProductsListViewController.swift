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
        
    }
}

extension ProductsListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ProductListViewCell = tableView.dequeueReusableCell(for: indexPath)
        cell.progressBar.progress = CGFloat(indexPath.row + 1) / 10
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
}
