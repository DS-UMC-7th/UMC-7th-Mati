//
//  HomeViewController.swift
//  week2kream
//
//  Created by 김미주 on 05/10/2024.
//

import UIKit

class HomeViewController: UIViewController {
    private let homeView = HomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view = homeView
        
        setupAction()
        setupDelegate()
    }
    
    private func setupAction() {
        homeView.searchBar.addTarget(self, action: #selector(searchBarTapped), for: .editingDidBegin)
        homeView.menuBar.addTarget(self, action: #selector(segmentedControlValueChanged(segment:)), for: .valueChanged)
        homeView.menuBar.addTarget(self, action: #selector(changeUnderLinePosition), for: .valueChanged)
    }
    
    private func setupDelegate() {
        homeView.collectionView.dataSource = self
    }
    
    @objc
    private func searchBarTapped() {
        print("seachBarTapped")
        let searchVC = SearchViewController()
        searchVC.modalPresentationStyle = .fullScreen
        present(searchVC, animated: true)
    }
    
    @objc
    private func segmentedControlValueChanged(segment: UISegmentedControl) {
        if segment.selectedSegmentIndex == 0 {
            homeView.adImage.isHidden = false
            homeView.collectionView.isHidden = false
            homeView.divideLine.isHidden = false
        }
        else {
            homeView.adImage.isHidden = true
            homeView.collectionView.isHidden = true
            homeView.divideLine.isHidden = true
        }
    }
    
    @objc
    private func changeUnderLinePosition(_ segment: UISegmentedControl) {
        let width = homeView.menuBar.frame.width / CGFloat(homeView.menuBar.numberOfSegments)
        let xPosition = homeView.menuBar.frame.origin.x + (width * CGFloat(homeView.menuBar.selectedSegmentIndex))
        
        UIView.animate(withDuration: 0.15) {
            self.homeView.underLine.frame.origin.x = xPosition
        }
    }

}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return HomeModel.dummy().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeCollectionViewCell.identifier, for: indexPath) as? HomeCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let list = HomeModel.dummy()
        
        cell.imageView.image = list[indexPath.row].image
        cell.titleLabel.text = list[indexPath.row].title
        
        return cell
    }
}
