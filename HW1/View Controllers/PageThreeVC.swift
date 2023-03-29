//
//  PageThreeVC.swift
//  HW1
//
//  Created by Damir Agadilov  on 29.03.2023.
//

import UIKit

class PageThreeVC: UIViewController {

    let activateSwitch: UISwitch = {
        let switchs = UISwitch()
        switchs.setOn(true, animated: true)
        return switchs
    }()

    let stabilizeSwitch: UISwitch = {
        let switchs = UISwitch()
        switchs.setOn(true, animated: true)
        return switchs
    }()

    let skewSwitch: UISwitch = {
        let switchs = UISwitch()
        switchs.setOn(true, animated: true)
        return switchs
    }()
    
    let myControlsLabel: UILabel = {
        let label = UILabel()
        label.text = "My Controls"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    let activateLabel: UILabel = {
        let label = UILabel()
        label.text = "Activate"
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    let stabilizeLabel: UILabel = {
        let label = UILabel()
        label.text = "Stabilize"
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()

    let skewLabel: UILabel = {
        let label = UILabel()
        label.text = "Skew"
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        addSubviewSetUp()
        constraintsSetUp()
        
        
    }
    
    private func addSubviewSetUp() {
        view.addSubview(myControlsLabel)
        view.addSubview(activateLabel)
        view.addSubview(activateSwitch)
        view.addSubview(stabilizeLabel)
        view.addSubview(stabilizeSwitch)
        view.addSubview(skewLabel)
        view.addSubview(skewSwitch)
    }
    
    private func constraintsSetUp() {
        myControlsLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(350)
            make.centerX.equalToSuperview()
        }
        
        activateLabel.snp.makeConstraints { make in
            make.top.equalTo(myControlsLabel.snp.bottom).offset(15)
            make.leading.equalToSuperview().offset(130)
        }
        
        activateSwitch.snp.makeConstraints { make in
            make.top.equalTo(myControlsLabel.snp.bottom).offset(10)
            make.leading.equalTo(activateLabel.snp.trailing).offset(15)
        }
        
        stabilizeLabel.snp.makeConstraints { make in
            make.top.equalTo(activateLabel.snp.bottom).offset(15)
            make.leading.equalToSuperview().offset(130)
        }
        
        stabilizeSwitch.snp.makeConstraints { make in
            make.top.equalTo(activateSwitch.snp.bottom).offset(10)
            make.leading.equalTo(stabilizeLabel.snp.trailing).offset(12)
        }
        
        skewLabel.snp.makeConstraints { make in
            make.top.equalTo(stabilizeLabel.snp.bottom).offset(15)
            make.leading.equalToSuperview().offset(130)
        }
        
        skewSwitch.snp.makeConstraints { make in
            make.top.equalTo(stabilizeSwitch.snp.bottom).offset(10)
            make.leading.equalTo(skewLabel.snp.trailing).offset(40)
        }
    }

}
