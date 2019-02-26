//
//  ViewController.swift
//  S05L53FiftyTableRows
//
//  Created by rjj on 2019.02.25.
//  Copyright © 2019 Sapient, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let rowCount = 50

    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowCount
    }

    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")

        cell.textLabel?.text = String(format: "%d", 1+indexPath.row)

        return cell
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

