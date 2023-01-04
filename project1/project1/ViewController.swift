//
//  ViewController.swift
//  project1
//
//  Created by Админ on 19.12.2022.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {
    
    private lazy var firstView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black
        return view
    }()
    
    private lazy var secondView = UIView()
    
    private lazy var secondTop = UIView()
    
    //First Row
    private lazy var clearBtn: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor.gray
        button.layer.borderWidth = 0.75
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitle("c", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 45, weight: .thin)
        return button
    }()
    
    private lazy var switchBtn: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor.gray
        button.layer.borderWidth = 0.75
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitle("+/-", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 45, weight: .thin)
        return button
    }()
    
    private lazy var percentBtn: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor.gray
        button.layer.borderWidth = 0.75
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitle("%", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 45, weight: .thin)
        return button
    }()

    private lazy var divideBtn: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor.orange
        button.layer.borderWidth = 0.75
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitle("/", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 45, weight: .thin)
        return button
    }()
    
    //Second Row
    private lazy var sevenBtn: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor.gray
        button.layer.borderWidth = 0.75
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitle("7", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 45, weight: .thin)
        return button
    }()
    
    private lazy var eightBtn: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor.gray
        button.layer.borderWidth = 0.75
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitle("8", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 45, weight: .thin)
        return button
    }()
    
    private lazy var nineBtn: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor.gray
        button.layer.borderWidth = 0.75
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitle("9", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 45, weight: .thin)
        return button
    }()
    
    private lazy var multiplyBtn: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor.orange
        button.layer.borderWidth = 0.75
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitle("*", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 45, weight: .thin)
        return button
    }()
    
    //Third Row
    private lazy var fourBtn: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor.gray
        button.layer.borderWidth = 0.75
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitle("4", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 45, weight: .thin)
        return button
    }()
    
    private lazy var fiveBtn: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor.gray
        button.layer.borderWidth = 0.75
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitle("5", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 45, weight: .thin)
        return button
    }()
    
    private lazy var sixBtn: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor.gray
        button.layer.borderWidth = 0.75
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitle("6", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 45, weight: .thin)
        return button
    }()
    
    private lazy var minusBtn: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor.orange
        button.layer.borderWidth = 0.75
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitle("-", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 45, weight: .thin)
        return button
    }()
    
    //Fourth Row
    private lazy var oneBtn: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor.gray
        button.layer.borderWidth = 0.75
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitle("1", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 45, weight: .thin)
        return button
    }()
    
    private lazy var twoBtn: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor.gray
        button.layer.borderWidth = 0.75
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitle("2", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 45, weight: .thin)
        return button
    }()
    
    private lazy var threeBtn: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor.gray
        button.layer.borderWidth = 0.75
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitle("3", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 45, weight: .thin)
        return button
    }()
    
    private lazy var plusBtn: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor.orange
        button.layer.borderWidth = 0.75
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitle("+", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 45, weight: .thin)
        return button
    }()
    
    //Second View Bottom
    private lazy var secondBottom = UIView()
    
    private lazy var zeroBtn: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor.gray
        button.layer.borderWidth = 0.75
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitle("0", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 45, weight: .thin)
        return button
    }()
    
    private lazy var dotBtn: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor.gray
        button.layer.borderWidth = 0.75
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitle(".", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 45, weight: .thin)
        return button
    }()
    
    private lazy var equalBtn: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor.orange
        button.layer.borderWidth = 0.75
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitle("=", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 45, weight: .thin)
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.white
        
        setupViews()
        setupConstraints()
    }

}

//MARK: - Setup views and constraints methods

private extension ViewController{
    func setupViews(){
        view.addSubview(firstView)
        view.addSubview(secondView)
        
        secondView.addSubview(secondTop)
        secondTop.addSubview(clearBtn)
        secondTop.addSubview(switchBtn)
        secondTop.addSubview(percentBtn)
        secondTop.addSubview(divideBtn)
        secondTop.addSubview(sevenBtn)
        secondTop.addSubview(eightBtn)
        secondTop.addSubview(nineBtn)
        secondTop.addSubview(multiplyBtn)
        secondTop.addSubview(fourBtn)
        secondTop.addSubview(fiveBtn)
        secondTop.addSubview(sixBtn)
        secondTop.addSubview(minusBtn)
        secondTop.addSubview(oneBtn)
        secondTop.addSubview(twoBtn)
        secondTop.addSubview(threeBtn)
        secondTop.addSubview(plusBtn)
        
        secondView.addSubview(secondBottom)
        secondBottom.addSubview(zeroBtn)
        secondBottom.addSubview(dotBtn)
        secondBottom.addSubview(equalBtn)
    }
    
    func setupConstraints(){
        firstView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.trailing.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(2.8)
        }
        
        secondView.snp.makeConstraints { make in
            make.top.equalTo(firstView.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            make.width.equalToSuperview()
        }
        
        secondTop.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(secondView.snp.height).dividedBy(3)
            make.width.equalToSuperview()
        }
        
        
        
        clearBtn.snp.makeConstraints { make in
            make.top.leading.equalToSuperview()
            make.width.height.equalTo(secondTop.snp.width).dividedBy(4)
        }
        
        switchBtn.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalTo(clearBtn.snp.trailing)
            make.width.height.equalTo(secondTop.snp.width).dividedBy(4)
        }
        
        percentBtn.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.width.height.equalTo(secondTop.snp.width).dividedBy(4)
        }
        
        divideBtn.snp.makeConstraints { make in
            make.top.trailing.equalToSuperview()
            make.leading.equalTo(percentBtn.snp.trailing)
            make.width.height.equalTo(secondTop.snp.width).dividedBy(4)
        }
        
        //
        sevenBtn.snp.makeConstraints { make in
            make.top.equalTo(clearBtn.snp.bottom)
            make.leading.equalToSuperview()
            make.width.height.equalTo(secondTop.snp.width).dividedBy(4)
        }
        
        eightBtn.snp.makeConstraints { make in
            make.top.equalTo(clearBtn.snp.bottom)
            make.leading.equalTo(sevenBtn.snp.trailing)
            make.width.height.equalTo(secondTop.snp.width).dividedBy(4)
        }
        
        nineBtn.snp.makeConstraints { make in
            make.top.equalTo(percentBtn.snp.bottom)
            make.leading.equalTo(eightBtn.snp.trailing)
            make.width.height.equalTo(secondTop.snp.width).dividedBy(4)
        }
        
        multiplyBtn.snp.makeConstraints { make in
            make.top.equalTo(divideBtn.snp.bottom)
            make.leading.equalTo(nineBtn.snp.trailing)
            make.trailing.equalToSuperview()
            make.height.equalTo(secondTop.snp.width).dividedBy(4)
        }
        
        //
        fourBtn.snp.makeConstraints { make in
            make.top.equalTo(sevenBtn.snp.bottom)
            make.leading.equalToSuperview()
            make.width.height.equalTo(secondTop.snp.width).dividedBy(4)
        }
        
        fiveBtn.snp.makeConstraints { make in
            make.top.equalTo(eightBtn.snp.bottom)
            make.leading.equalTo(fourBtn.snp.trailing)
            make.width.height.equalTo(secondTop.snp.width).dividedBy(4)
        }
        
        sixBtn.snp.makeConstraints { make in
            make.top.equalTo(nineBtn.snp.bottom)
            make.leading.equalTo(fiveBtn.snp.trailing)
            make.width.height.equalTo(secondTop.snp.width).dividedBy(4)
        }
        
        minusBtn.snp.makeConstraints { make in
            make.top.equalTo(multiplyBtn.snp.bottom)
            make.leading.equalTo(sixBtn.snp.trailing)
            make.trailing.equalToSuperview()
            make.height.equalTo(secondTop.snp.width).dividedBy(4)
        }
        
        //
        oneBtn.snp.makeConstraints { make in
            make.top.equalTo(fourBtn.snp.bottom)
            make.leading.equalToSuperview()
            make.bottom.equalTo(secondBottom.snp.top)
            make.width.height.equalTo(secondTop.snp.width).dividedBy(4)
        }
        
        twoBtn.snp.makeConstraints { make in
            make.top.equalTo(fiveBtn.snp.bottom)
            make.leading.equalTo(oneBtn.snp.trailing)
            make.bottom.equalTo(secondBottom.snp.top)
            make.width.height.equalTo(secondTop.snp.width).dividedBy(4)
        }
        
        threeBtn.snp.makeConstraints { make in
            make.top.equalTo(sixBtn.snp.bottom)
            make.leading.equalTo(twoBtn.snp.trailing)
            make.bottom.equalTo(secondBottom.snp.top)
            make.width.height.equalTo(secondTop.snp.width).dividedBy(4)
        }
        
        plusBtn.snp.makeConstraints { make in
            make.top.equalTo(minusBtn.snp.bottom)
            make.leading.equalTo(threeBtn.snp.trailing)
            make.trailing.equalToSuperview()
            make.bottom.equalTo(secondBottom.snp.top)
            make.height.equalTo(secondTop.snp.width).dividedBy(4)
        }
        
        //
        secondBottom.snp.makeConstraints { make in
            make.top.equalTo(secondTop.snp.bottom)
            make.leading.trailing.bottom.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalTo(secondTop.snp.width).dividedBy(4)
        }
        
        zeroBtn.snp.makeConstraints { make in
            make.top.leading.bottom.equalToSuperview()
            make.width.equalTo(secondBottom.snp.width).dividedBy(2)
            make.height.equalToSuperview()
        }
        
        dotBtn.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.leading.equalTo(zeroBtn.snp.trailing)
            make.width.equalTo(secondBottom.snp.width).dividedBy(4)
            make.height.equalToSuperview()
        }
        
        equalBtn.snp.makeConstraints { make in
            make.top.trailing.bottom.equalToSuperview()
            make.leading.equalTo(dotBtn.snp.trailing)
            make.height.equalToSuperview()
        }
    }
}

