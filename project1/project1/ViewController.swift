//
//  ViewController.swift
//  project1
//
//  Created by Админ on 19.12.2022.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {
    
    private lazy var myLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.text = "I am Rich"
        label.textColor = UIColor.white
       return label
    }()
    
    private lazy var myDiamond: UIImageView = {
       let imageView = UIImageView()
        imageView.image = UIImage(named: "diamond")
       return imageView
    }()
    
    private lazy var mySecondLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.text = "I can buy anything"
        label.textColor = UIColor.white
        return label
    }()
    
    private lazy var moneyLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.text = "Account: "
        label.textColor = UIColor.white
        return label
    }()
    
    private lazy var changeBtn: UIButton = {
       let button = UIButton()
        button.setTitle("Change", for: .normal)
        button.backgroundColor = UIColor.systemBlue
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(action), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemGreen
        
        setupViews()
        setupConstraints()
    }

}

//MARK: - Setup views and constraints methods

private extension ViewController{
    func setupViews(){
        view.addSubview(myLabel)
        view.addSubview(myDiamond)
        view.addSubview(mySecondLabel)
        view.addSubview(moneyLabel)
        view.addSubview(changeBtn)
    }
    
    func setupConstraints(){
        myLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(myDiamond.snp.top).offset(-20)
        }
        myDiamond.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(300)
        }
        mySecondLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(myDiamond.snp.bottom).offset(5)
        }
        moneyLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(mySecondLabel.snp.bottom).offset(40)
        }
        changeBtn.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(moneyLabel.snp.bottom).offset(15)
            make.width.equalTo(150)
            make.height.equalTo(50)
        }
    }
}

//MARK: - Functions

private extension ViewController{
    @objc func action(){
        moneyLabel.text = "Account: \(Int.random(in: 1000..<10000))$"
    }
}

