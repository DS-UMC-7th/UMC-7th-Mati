//
//  MyViewController.swift
//  week2kream
//
//  Created by 김미주 on 05/10/2024.
//

import UIKit

class MyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = myView
        myView.delegate = self
    }
    
    private lazy var myView: MyView = {
        let view = MyView()
        return view
    }()

}
