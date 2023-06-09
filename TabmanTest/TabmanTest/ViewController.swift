//
//  ViewController.swift
//  TabmanTest
//
//  Created by wooseob on 2023/05/25.
//

import UIKit
import Tabman
import Pageboy

class ViewController: TabmanViewController {
    
    private var viewControllers: Array<UIViewController> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
        
        let vc2 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CatViewController") as! NewsViewController
        let vc3 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VideoViewController") as! VideoViewController
        let vc4 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ChatViewController") as! ChatViewController
        
        viewControllers.append(vc2)
        viewControllers.append(vc3)
        viewControllers.append(vc4)
        
        self.dataSource = self
        
        // Create bar
        let bar = TMBar.ButtonBar()
        bar.buttons.customize { button in
            button.tintColor = .magenta
            button.selectedTintColor = .white
        }
        bar.layout.contentInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
        bar.indicator.backgroundColor = .green
        bar.layout.transitionStyle = .none // Customize
        
        // Add to view
        addBar(bar, dataSource: self, at: .top)
    }
    
    
}

extension ViewController: PageboyViewControllerDataSource, TMBarDataSource {
    func barItem(for bar: TMBar, at index: Int) -> TMBarItemable {
        let item = TMBarItem(title: "")
        switch index {
        case 0:
            item.title = "메뉴"
        case 1:	
            item.title = "신상"
        case 2:
            item.title = "Hot"
        default:
            item.title = "타이틀 미정"
        }
        	
        return item
    }
    
    func numberOfViewControllers(in pageboyViewController: PageboyViewController) -> Int {
        return viewControllers.count
    }

    func viewController(for pageboyViewController: PageboyViewController,
                        at index: PageboyViewController.PageIndex) -> UIViewController? {
        return viewControllers[index]
    }

    func defaultPage(for pageboyViewController: PageboyViewController) -> PageboyViewController.Page? {
        return nil
    }
}
