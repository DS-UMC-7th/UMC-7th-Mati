//
//  MatinKimViewController.swift
//  kream
//
//  Created by 김미주 on 09/11/2024.
//

import UIKit

class MatinKimViewController: UIViewController {
    private let matinView = MatinKimView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view = matinView

    }

}
