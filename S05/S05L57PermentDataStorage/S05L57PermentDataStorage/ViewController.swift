//
//  ViewController.swift
//  S05L57PermentDataStorage
//
//  Created by rjj on 2019.02.28.
//  Copyright © 2019 Sapient, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

//        UserDefaults.standard.set("rjj", forKey: "name")

        print("before retrieval")
        let nameStr = UserDefaults.standard.object(forKey: "name")
        if let name = nameStr as! String? {
            print("retrieved value \(name)")
        }
        print("after retrieval")

    }
}

