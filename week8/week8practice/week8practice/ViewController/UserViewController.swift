//
//  ViewController.swift
//  week8practice
//
//  Created by 김미주 on 28/11/2024.
//

import UIKit
import Moya

class USerViewController: UIViewController {
    
    private let provider = MoyaProvider<UserTargetType>()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        getUserInfo()
    }

    private func getUserInfo() {
        provider.request(.getAllUsers) { result in
            switch result {
            case .success(let response):
                do {
                    let userResponse = try response.map([UserResponseModel].self)
                    print("Successfully mapped response: \(userResponse)")
                } catch {
                    print("Mapping error: \(error.localizedDescription)")
                }
            case .failure(let error):
                print("Network request error: \(error.localizedDescription)")
            }
        }
    }

}

