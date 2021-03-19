//
//  ViewController.swift
//  BCHomeComponent
//
//  Created by bubuatt@sina.com on 03/19/2021.
//  Copyright (c) 2021 bubuatt@sina.com. All rights reserved.
//

import UIKit
import SnapKit
import CTMediator
import BCHomeComponent

class ViewController: UIViewController {

    lazy var button: UIButton = {
        let button = UIButton(type: .custom)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.setTitle("跳转", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(btnOnClick), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(button)
        button.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.width.equalTo(100)
            make.height.equalTo(40)
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func btnOnClick(){
        if let vc = CTMediator.sharedInstance().cy_nativeFetchHomeView(callback: { (str) in
            print(str)
        }){
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

