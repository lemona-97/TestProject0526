//
//  ThirdViewController.swift
//  TabmanTest
//
//  Created by wooseob on 2023/05/25.
//

import UIKit

class ChatViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green
        print("Chat VC Loaded.")
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        print("Third VC Loaded again.")
    }
    

}
