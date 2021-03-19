//
//  BCConnectorHomeView.swift
//  PodUnitTestDemo
//
//  Created by choknight on 2021/3/18.
//

import UIKit
import CTMediator


class Target_Home: NSObject {
    @objc func Action_NativeFetchHomeViewController(_ params:NSDictionary) -> UIViewController {
        if let callback = params["callback"] as? (String) -> Void {
            callback("success")
        }

        let aViewController = HomeViewController()
        return aViewController
    }
}


