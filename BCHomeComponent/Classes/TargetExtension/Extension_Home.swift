//
//  Extension_Home.swift
//  PodUnitTestDemo
//
//  Created by choknight on 2021/3/18.
//

import CTMediator

extension CTMediator {
    // 如果这个方法也要给Objective-C工程调用，就需要加上@objc
    @objc public func cy_nativeFetchHomeView(callback:@escaping (String) -> Void) -> UIViewController? {
        let params = [
            "callback":callback,
            kCTMediatorParamsKeySwiftTargetModuleName:"BCHomeComponent" // 需要给到module名
            ] as [AnyHashable : Any]
//        print("😸😸😸")
       
        if let viewController = self.performTarget("Home", action: "NativeFetchHomeViewController", params: params, shouldCacheTarget: false) as? UIViewController {
            return viewController
        }else{
            print("没找到ViewController")
        }
        return nil
    }
}
