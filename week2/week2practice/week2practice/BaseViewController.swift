//
//  BaseViewController.swift
//  week2practice
//
//  Created by 김미주 on 05/10/2024.
//

import UIKit

class BaseViewController: UITabBarController {
    private let modalVC = ModalViewController()
    private let navigationVC = NavigationViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        modalVC.tabBarItem = UITabBarItem(title: "modalVC", image: UIImage(systemName: "apple.terminal"), tag: 0)
        navigationVC.tabBarItem = UITabBarItem(title: "navigationVC", image: UIImage(systemName: "tray.full"), tag: 1)
        
        self.viewControllers = [modalVC, navigationVC]
    }

}
