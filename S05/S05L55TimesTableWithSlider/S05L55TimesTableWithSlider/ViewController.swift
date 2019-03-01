//
//  ViewController.swift
//  S05L55TimesTableWithSlider
//
//  Created by rjj on 2019.02.25.
//  Copyright © 2019 Sapient, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let rowCount = 50

    @IBOutlet weak var slider: UISlider!

    @IBOutlet weak var table: UITableView!

    @IBAction func sliderChanged(_ sender: Any) {
        print(slider.value)

        table.reloadData()
    }

    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowCount
    }

    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")

        cell.textLabel?.text = String(Int(slider.value) * (indexPath.row + 1))

        return cell
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

