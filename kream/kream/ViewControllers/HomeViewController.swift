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
        self.navigationController?.isNavigationBarHidden = true

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
        homeView.justCollectionView.dataSource = self
        homeView.challengeCollectionView.dataSource = self
        
        homeView.justCollectionView.delegate = self
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
            homeView.scrollView.isHidden = false
        }
        else {
            homeView.scrollView.isHidden = true
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
        if collectionView == homeView.collectionView {
            return HomeModel.dummy().count
        } else if collectionView == homeView.justCollectionView {
            return JustDroppedModel.dummy().count
        } else if collectionView == homeView.challengeCollectionView {
            return ChallengeModel.dummy().count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == homeView.collectionView {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeCollectionViewCell.identifier, for: indexPath) as? HomeCollectionViewCell else {
                return UICollectionViewCell()
            }
            
            let list = HomeModel.dummy()
            cell.imageView.image = list[indexPath.row].image
            cell.titleLabel.text = list[indexPath.row].title
            return cell
            
        } else if collectionView == homeView.justCollectionView {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: JustDroppedCollectionViewCell.identifier, for: indexPath) as? JustDroppedCollectionViewCell else {
                return UICollectionViewCell()
            }
            
            let list = JustDroppedModel.dummy()
            cell.loadImage(from: list[indexPath.row].image)
            cell.imageView.backgroundColor = list[indexPath.row].imageColor
            cell.tradeLabel.text = list[indexPath.row].trade
            cell.savedIcon.image = list[indexPath.row].saved
            cell.brandLabel.text = list[indexPath.row].brand
            cell.goodsLabel.text = list[indexPath.row].goods
            cell.priceLabel.text = list[indexPath.row].price
            
            return cell
        } else if collectionView == homeView.challengeCollectionView {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ChallengeCollectionViewCell.identifier, for: indexPath) as? ChallengeCollectionViewCell else {
                return UICollectionViewCell()
            }
            
            let list = ChallengeModel.dummy()
            cell.loadImage(from: list[indexPath.row].image)
            cell.idLabel.text = list[indexPath.row].id
            
            return cell
        }
        
        return UICollectionViewCell()
    }
}

extension HomeViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == homeView.justCollectionView && indexPath.row == 0 {
            let matinVC = MatinKimViewController()
            matinVC.hidesBottomBarWhenPushed = true 
            navigationController?.pushViewController(matinVC, animated: true)
        }
    }
}
