//
//  SavedViewController.swift
//  week2kream
//
//  Created by 김미주 on 05/10/2024.
//

import UIKit

class SavedViewController: UIViewController {
    
    let data = dummySaveModel.saveDatas

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = saveView
    }
    
    private lazy var saveView: SaveView = {
        let view = SaveView()
        
        view.tableView.dataSource = self
        view.tableView.delegate = self
        
        return view
    }()

}

// MARK: - dataSource, delegate 구현
extension SavedViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SaveCell.identifier, for: indexPath) as? SaveCell else {
            return UITableViewCell()
        }
        
        cell.configure(model: data[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        99
    }
}
