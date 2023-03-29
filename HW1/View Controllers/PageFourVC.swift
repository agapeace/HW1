//
//  PageFourVC.swift
//  HW1
//
//  Created by Damir Agadilov  on 29.03.2023.
//

import UIKit

class PageFourVC: UIViewController {

    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .systemBackground
        scrollView.frame = view.bounds
        scrollView.contentSize = contentSize
        return scrollView
    }()
    
    private var contentSize: CGSize {
        CGSize(width: view.frame.width, height: view.frame.height + 350)
    }
    
    private lazy var contentView: UIView = {
        let view = UIView()
        view.frame.size = contentSize
        view.backgroundColor = .systemBackground
        return view
    }()
    
    let firstView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        return view
    }()
    
    let secondView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        return view
    }()
    
    let thirdView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        return view
    }()
    
    let fourthView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        return view
    }()
    
    let fifthView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        return view
    }()
    
    let sixthView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        return view
    }()
    
    let seventhView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        return view
    }()
    
    let eighthView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        return view
    }()
    
    let ninthView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        return view
    }()
    
    let tenthView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        return view
    }()
    
    let eleventhView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        return view
    }()
    
    let twelvethView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)
        return view
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        addSubviewSetUp()
        constraintsSetUp()

    }
    
    private func addSubviewSetUp() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(firstView)
        contentView.addSubview(secondView)
        contentView.addSubview(thirdView)
        contentView.addSubview(fourthView)
        contentView.addSubview(fifthView)
        contentView.addSubview(sixthView)
        contentView.addSubview(seventhView)
        contentView.addSubview(eighthView)
        contentView.addSubview(ninthView)
        contentView.addSubview(tenthView)
        contentView.addSubview(eleventhView)
        contentView.addSubview(twelvethView)
        
    }
    
    private func constraintsSetUp() {
        scrollView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(60)
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(0)
        }
        
        firstView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(0)
            make.width.height.equalTo(scrollView.snp.width).dividedBy(2).offset(-5)
            make.leading.equalToSuperview()
        }
        
        secondView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(0)
            make.width.height.equalTo(scrollView.snp.width).dividedBy(2).offset(-5)
            make.leading.equalTo(firstView.snp.trailing).offset(10)
            make.trailing.equalToSuperview()
        }
        
        thirdView.snp.makeConstraints { make in
            make.top.equalTo(firstView.snp.bottom).offset(10)
            make.leading.equalToSuperview()
            make.width.height.equalTo(scrollView.snp.width).dividedBy(2).offset(-5)
        
        }
        
        fourthView.snp.makeConstraints { make in
            make.top.equalTo(secondView.snp.bottom).offset(10)
            make.leading.equalTo(thirdView.snp.trailing).offset(10)
            make.width.height.equalTo(scrollView.snp.width).dividedBy(2).offset(-5)
            make.trailing.equalToSuperview()
        }
        
        fifthView.snp.makeConstraints { make in
            make.top.equalTo(thirdView.snp.bottom).offset(10)
            make.leading.equalToSuperview()
            make.width.height.equalTo(scrollView.snp.width).dividedBy(2).offset(-5)
        }
        
        sixthView.snp.makeConstraints { make in
            make.top.equalTo(fourthView.snp.bottom).offset(10)
            make.leading.equalTo(fifthView.snp.trailing).offset(10)
            make.width.height.equalTo(scrollView.snp.width).dividedBy(2).offset(-5)
            make.trailing.equalToSuperview()
        }
        
        seventhView.snp.makeConstraints { make in
            make.top.equalTo(fifthView.snp.bottom).offset(10)
            make.leading.equalToSuperview()
            make.width.height.equalTo(scrollView.snp.width).dividedBy(2).offset(-5)
        }
        
        eighthView.snp.makeConstraints { make in
            make.top.equalTo(sixthView.snp.bottom).offset(10)
            make.leading.equalTo(seventhView.snp.trailing).offset(10)
            make.width.height.equalTo(scrollView.snp.width).dividedBy(2).offset(-5)
            make.trailing.equalToSuperview()
        }
        
        ninthView.snp.makeConstraints { make in
            make.top.equalTo(seventhView.snp.bottom).offset(10)
            make.leading.equalToSuperview()
            make.width.height.equalTo(scrollView.snp.width).dividedBy(2).offset(-5)
        }
        
        tenthView.snp.makeConstraints { make in
            make.top.equalTo(eighthView.snp.bottom).offset(10)
            make.leading.equalTo(ninthView.snp.trailing).offset(10)
            make.trailing.equalToSuperview()
            make.width.height.equalTo(scrollView.snp.width).dividedBy(2).offset(-5)
        }
        
        eleventhView.snp.makeConstraints { make in
            make.top.equalTo(ninthView.snp.bottom).offset(10)
            make.leading.equalToSuperview()
            make.width.height.equalTo(scrollView.snp.width).dividedBy(2).offset(-5)
        }
        
        twelvethView.snp.makeConstraints { make in
            make.top.equalTo(tenthView.snp.bottom).offset(10)
            make.leading.equalTo(eleventhView.snp.trailing).offset(10)
            make.trailing.equalToSuperview()
            make.width.height.equalTo(scrollView.snp.width).dividedBy(2).offset(-5)
        }
        
        
        
    }
}
