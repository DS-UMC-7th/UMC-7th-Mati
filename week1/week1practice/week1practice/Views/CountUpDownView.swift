//
//  CountUpDownView.swift
//  week1practice
//
//  Created by 김미주 on 27/09/2024.
//

import UIKit

class CountUpDownView: UIView {

    // init(frame:) 이니셜라이저를 통해 코드에서 뷰를 생성할 수 있음
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.addComponents()
    }
    
    private func addComponents() {
        self.addSubview(countLabel)
        
        NSLayoutConstraint.activate([
            countLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 362),
            countLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 111),
            countLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -110)
        ])
    }
    
    // 스토리보드를 사용할 경우에는 지원되지 않도록 함
    required init?(coder: NSCoder) {
        fatalError("Init(coder:) has not been implemented")
    }
    
    // 카운트 표시 라벨
    public lazy var countLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 42, weight: .bold)
        label.textColor = UIColor.black
        label.textAlignment = .center
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    // 버튼 내부 텍스트 폰트 지정 컨테이너
    private lazy var titleContainer: AttributeContainer = {
        var container = AttributeContainer()
        container.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        container.foregroundColor = UIColor.black
        return container
    }()
    
    // 숫자 업 버튼
    public lazy var countUpButton: UIButton = {
        let btn = UIButton()
        
        var configuration = UIButton.Configuration.plain()
        configuration.image = UIImage(systemName: "arrowtriangle.up.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(.black)
        configuration.imagePlacement = .top
        configuration.imagePadding = 5
        
        configuration.attributedTitle = AttributedString("숫자 올리기", attributes: titleContainer)
        configuration.titleAlignment = .center
        
        btn.configuration = configuration
        btn.translatesAutoresizingMaskIntoConstraints = false
        
        return btn
    }()
    
    // 숫자 다운 버튼
    public lazy var countDownButton: UIButton = {
        let btn = UIButton()
        
        var configuration = UIButton.Configuration.plain()
        configuration.image = UIImage(systemName: "arrowtriangle.down.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(.black)
        configuration.imagePlacement = .top
        configuration.imagePadding = 5
        
        configuration.attributedTitle = AttributedString("숫자 내리기", attributes: titleContainer)
        configuration.titleAlignment = .center
        
        btn.configuration = configuration
        btn.translatesAutoresizingMaskIntoConstraints = false
        
        return btn
    }()
    
}
