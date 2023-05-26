//
//  SecondViewController.swift
//  TabmanTest
//
//  Created by wooseob on 2023/05/25.
//

import UIKit

class VideoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
        print("Video VC Loaded.")
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Video VC Loaded again.")
    }


}
