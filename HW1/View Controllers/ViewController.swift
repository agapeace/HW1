//
//  ViewController.swift
//  HW1
//
//  Created by Damir Agadilov  on 27.03.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let flowerImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "square_flowers")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    let firstNamelabel: UILabel = {
        let label = UILabel()
        label.text = "First"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    let middleNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Middle"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    let lastNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Last"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    let firstNameTextField: UITextField = {
        let textfield = UITextField()
        let attributedPlaceHolder = NSAttributedString(string: "Enter First Name", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18)])
        textfield.attributedPlaceholder = attributedPlaceHolder
        textfield.leftViewMode = .always
        textfield.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textfield.textColor = .black
        textfield.layer.borderWidth = 1
        textfield.layer.cornerRadius = 10
        return textfield
    }()
    
    let middleNameTextField: UITextField = {
        let textfield = UITextField()
        let attributedPlaceHolder = NSAttributedString(string: "Enter Middle Name", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18)])
        textfield.attributedPlaceholder = attributedPlaceHolder
        textfield.leftViewMode = .always
        textfield.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textfield.textColor = .black
        textfield.layer.borderWidth = 1
        textfield.layer.cornerRadius = 10
        return textfield
    }()
    
    let lastNameTextField: UITextField = {
        let textfield = UITextField()
        let attributedPlaceHolder = NSAttributedString(string: "Enter Last Name", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18)])
        textfield.attributedPlaceholder = attributedPlaceHolder
        textfield.leftViewMode = .always
        textfield.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textfield.textColor = .black
        textfield.layer.borderWidth = 1
        textfield.layer.cornerRadius = 10
        return textfield
    }()
    
    let allStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 5
        return stackView
    }()
    
    let leftStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 10
        return stackView
    }()
    
    let rightStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 5
        return stackView
    }()
    
    
    let namesStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    let noteView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.7098525167, green: 0.7098525167, blue: 0.7098525167, alpha: 1)
        return view
    }()
    
    let notesLabel: UILabel = {
        let label = UILabel()
        label.text = "Notes:"
        label.textAlignment = .left
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    
    let buttonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 10
        return stackView
    }()
    
    let saveButton: UIButton = {
        let button = UIButton()
        button.setTitle("Save", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setTitleColor(.systemBlue, for: .normal)
        return button
    }()
    
    let cancelButton: UIButton = {
        let button = UIButton()
        button.setTitle("Cancel", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setTitleColor(.systemBlue, for: .normal)
        return button
    }()
    
    let clearButton: UIButton = {
        let button = UIButton()
        button.setTitle("Clear", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setTitleColor(.systemBlue, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        addSubviewSetUp()
        stackViewSetUp()
        constraintsSetUp()
    }
    
    private func addSubviewSetUp(){
//        view.addSubview(flowerImage)
//        view.addSubview(firstNamelabel)
//        view.addSubview(middleNameLabel)
//        view.addSubview(lastNameLabel)
//        view.addSubview(firstNameTextField)
//        view.addSubview(middleNameTextField)
//        view.addSubview(lastNameTextField)
        view.addSubview(allStackView)
        view.addSubview(leftStackView)
        view.addSubview(rightStackView)
        view.addSubview(namesStackView)
        view.addSubview(noteView)
//        view.addSubview(notesLabel)
        view.addSubview(buttonStackView)
//        view.addSubview(saveButton)
//        view.addSubview(cancelButton)
//        view.addSubview(clearButton)
    }
    
    private func stackViewSetUp() {
        allStackView.addArrangedSubview(leftStackView)
        allStackView.addArrangedSubview(rightStackView)
        
        leftStackView.addArrangedSubview(flowerImage)
        leftStackView.addArrangedSubview(namesStackView)
        
        namesStackView.addArrangedSubview(firstNamelabel)
        namesStackView.addArrangedSubview(middleNameLabel)
        namesStackView.addArrangedSubview(lastNameLabel)
        
        rightStackView.addArrangedSubview(firstNameTextField)
        rightStackView.addArrangedSubview(middleNameTextField)
        rightStackView.addArrangedSubview(lastNameTextField)
        
        buttonStackView.addArrangedSubview(saveButton)
        buttonStackView.addArrangedSubview(cancelButton)
        buttonStackView.addArrangedSubview(clearButton)
        
        noteView.addSubview(notesLabel)
    
    }
    
    private func constraintsSetUp() {
        allStackView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(0)
            make.leading.trailing.equalToSuperview().inset(10)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.top).offset(100)
        }
        
        flowerImage.snp.makeConstraints { make in
            make.height.width.equalTo(100)
        }
        
        noteView.snp.makeConstraints { make in
            make.top.equalTo(allStackView.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(10)
            make.height.equalTo(550)
        }
        
        notesLabel.snp.makeConstraints { make in
            make.top.equalTo(noteView.snp.top).offset(0)
            make.width.equalToSuperview()
        }
        
        buttonStackView.snp.makeConstraints { make in
            make.top.equalTo(noteView.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(10)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-5)
        }
    }
}

