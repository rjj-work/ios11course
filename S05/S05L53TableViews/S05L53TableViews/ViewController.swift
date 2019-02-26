//
//  ViewController.swift
//  S05L53TableViews
//
//  Created by rjj on 2019.02.23.
//  Copyright © 2019 Sapient, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let cellContent = ["Timber", "Teddy", "Belle", "Cali", "Merida"]

    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellContent.count
    }

    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")

        cell.textLabel?.text = cellContent[indexPath.row]

        return cell
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

