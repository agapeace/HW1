//
//  PageTwoVC.swift
//  HW1
//
//  Created by Damir Agadilov  on 28.03.2023.
//

import UIKit
import SnapKit

class PageTwoVC: UIViewController {

    let firstNameLabel: UILabel = {
        let label = UILabel()
        label.text = "First Name"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .black
        return label
    }()
    
    let middleNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Middle Name"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .black
        return label
    }()
    
    let lastNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Last Name"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .black
        return label
    }()
    
    let firstNameTextField: UITextField = {
        let textField = UITextField()
        let attributedPlaceHolder = NSAttributedString(string: "Enter First Name",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        textField.attributedPlaceholder = attributedPlaceHolder
        textField.layer.cornerRadius = 10
        textField.layer.borderWidth = 1
        textField.textColor = .black
        textField.font = UIFont.systemFont(ofSize: 20)
        textField.leftViewMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        return textField
    }()
    
    let middleNameTextField: UITextField = {
        let textField = UITextField()
        let attributedPlaceHolder = NSAttributedString(string: "Enter Middle Name",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        textField.attributedPlaceholder = attributedPlaceHolder
        textField.layer.cornerRadius = 10
        textField.layer.borderWidth = 1
        textField.textColor = .black
        textField.font = UIFont.systemFont(ofSize: 20)
        textField.leftViewMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        return textField
    }()
    
    let lastNameTextField: UITextField = {
        let textField = UITextField()
        let attributedPlaceHolder = NSAttributedString(string: "Enter Last Name",
                                                       attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        textField.attributedPlaceholder = attributedPlaceHolder
        textField.layer.cornerRadius = 10
        textField.layer.borderWidth = 1
        textField.textColor = .black
        textField.font = UIFont.systemFont(ofSize: 20)
        textField.leftViewMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        return textField
    }()
    
    let allStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 10
        return stackView
    }()
    
    let leftStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .trailing
        stackView.spacing = 10
        return stackView
    }()
    
    let rightStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 10
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        addSubviewSetUp()
        constraintSetUp()
    }
    
    private func addSubviewSetUp() {
        view.addSubview(firstNameLabel)
        view.addSubview(middleNameLabel)
        view.addSubview(lastNameLabel)
        view.addSubview(firstNameTextField)
        view.addSubview(middleNameTextField)
        view.addSubview(lastNameTextField)
        view.addSubview(allStackView)
        view.addSubview(leftStackView)
        view.addSubview(rightStackView)
    }
    
    private func constraintSetUp() {
        allStackView.addArrangedSubview(leftStackView)
        allStackView.addArrangedSubview(rightStackView)
        
        leftStackView.addArrangedSubview(firstNameLabel)
        leftStackView.addArrangedSubview(middleNameLabel)
        leftStackView.addArrangedSubview(lastNameLabel)
    
        rightStackView.addArrangedSubview(firstNameTextField)
        rightStackView.addArrangedSubview(middleNameTextField)
        rightStackView.addArrangedSubview(lastNameTextField)
        
        allStackView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(0)
            make.leading.trailing.equalToSuperview().inset(10)
            make.height.equalTo(150)
        }
        
        leftStackView.snp.makeConstraints { make in
            make.width.equalTo(120)
        }
    }
}
