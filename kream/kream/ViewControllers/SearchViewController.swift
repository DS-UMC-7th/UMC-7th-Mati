//
//  SearchViewController.swift
//  kream
//
//  Created by 김미주 on 06/11/2024.
//

import UIKit

class SearchViewController: UIViewController {
    private let searchView = SearchView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view = searchView
    }

}
