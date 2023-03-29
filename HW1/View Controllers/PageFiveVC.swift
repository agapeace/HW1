//
//  PageFiveVC.swift
//  HW1
//
//  Created by Damir Agadilov  on 29.03.2023.
//

import UIKit

class PageFiveVC: UIViewController {

    let firstStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 10
        return stackView
    }()
    
    let oneButton: UIButton = {
        let button = UIButton()
        button.setTitle("Short", for: .normal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    let twoButton: UIButton = {
        let button = UIButton()
        button.setTitle("Much Longer Button", for: .normal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    let secondStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.alignment = .fill
        stackView.spacing = 10
        return stackView
    }()
    
    let thirdButton: UIButton =  {
        let button = UIButton()
        button.setTitle("Short", for: .normal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        return button
    }()
    
    let fourthButton: UIButton =  {
        let button = UIButton()
        button.setTitle("Medium", for: .normal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        return button
    }()
    
    let fifthButton: UIButton =  {
        let button = UIButton()
        button.setTitle("Long Button Title", for: .normal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        return button
    }()
    
    let thirdStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 10
        return stackView
    }()
    
    let sixthButton: UIButton = {
        let button = UIButton()
        button.setTitle("Short", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        return button
    }()
    
    let seventhButton: UIButton = {
        let button = UIButton()
        button.setTitle("Long Title Button", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        addSubviewSetUp()
        constraintsSetUp()
    }
    
    private func addSubviewSetUp() {
        view.addSubview(firstStackView)
        view.addSubview(secondStackView)
        view.addSubview(thirdStackView)
        
        firstStackView.addArrangedSubview(oneButton)
        firstStackView.addArrangedSubview(twoButton)
        
        secondStackView.addArrangedSubview(thirdButton)
        secondStackView.addArrangedSubview(fourthButton)
        secondStackView.addArrangedSubview(fifthButton)
        
        thirdStackView.addArrangedSubview(sixthButton)
        thirdStackView.addArrangedSubview(seventhButton)
    }
    
    private func constraintsSetUp() {
        firstStackView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(0)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(100)
        }
        
        secondStackView.snp.makeConstraints { make in
            make.top.equalTo(firstStackView.snp.bottom).offset(30)
            make.leading.trailing.equalToSuperview().inset(10)
        }
        
        thirdStackView.snp.makeConstraints { make in
            make.top.equalTo(secondStackView.snp.bottom).offset(30)
            make.leading.trailing.equalToSuperview().inset(5)
            make.height.equalTo(50)
        }
    }

    
}
