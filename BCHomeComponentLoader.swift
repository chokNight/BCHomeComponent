//
//  BCHomeComponentLoader.swift
//  BCHomeComponent
//
//  Created by choknight on 2021/3/19.
//

import Foundation

class BCHomeComponentLoader: NSObject {}

extension Bundle {
    static let resourcesBundle: Bundle? = {
        var path = Bundle(for: BCHomeComponentLoader.self).resourcePath ?? ""
        path.append("/BCHomeComponent.bundle")
        return Bundle(path: path)
    }()
}

extension UIImage {
    convenience init?(nameInBundle name: String) {
        self.init(named: name, in: .resourcesBundle, compatibleWith: nil)
    }
}
