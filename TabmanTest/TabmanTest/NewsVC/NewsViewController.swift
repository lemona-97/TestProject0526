//
//  FirstViewController.swift
//  TabmanTest
//
//  Created by wooseob on 2023/05/25.
//

import UIKit

class NewsViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        print("Cat VC Loaded.")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Cat VC Loaded again.")
    }

}
