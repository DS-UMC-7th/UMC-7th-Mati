//
//  ViewController.swift
//  week9practice
//
//  Created by 김미주 on 16/12/2024.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = gestureView
    }
    
    private var gestureView = GestureImageView().then {
        $0.loadImage(from: "https://i.namu.wiki/i/YIxNJW5sEG-sSI3DoSa5PBJNfm-UeWvBhL1BzA0dxRNEkZR-2pTr-BrseqswVmkbZ_n_GukxOOBTjx8Qct1E39lC5Am3BdrsuQcNhEwTnGLMRksjXfYqUNkH4QKRHc3Te5WjWkQrRZX3lPRjPQIUsg.webp")
    }
}

