//
//  ViewController.swift
//  week7practice
//
//  Created by 김미주 on 19/11/2024.
//

import UIKit
import SnapKit
import Then

class ViewController: UIViewController {
    private let testView = APITestView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = testView
    }


}

