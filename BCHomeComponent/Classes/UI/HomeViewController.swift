//
//  BCHomeViewController.swift
//  PodUnitTestDemo
//
//  Created by choknight on 2021/3/18.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {

    lazy var sectionView: UIImageView = {
        let sectionView = UIImageView(image: UIImage(nameInBundle: "bg_shadow_orange_r8_p10"))
        return sectionView
    }()
    
    var itemImages = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        
        view.addSubview(sectionView)
        sectionView.snp.makeConstraints { (make) in
            make.left.equalTo(10)
            make.top.equalTo(100)
            make.right.equalTo(-10)
            make.height.equalTo(100)
        }
        
        itemImages = [
            UIImageView.init(image: UIImage(nameInBundle: "menu_icon_daily")),
            UIImageView.init(image: UIImage(nameInBundle: "menu_icon_more")),
            UIImageView.init(image: UIImage(nameInBundle: "menu_icon_researchreport")),
            UIImageView.init(image: UIImage(nameInBundle: "menu_icon_financialtea"))
        ]
        
        let itemW = (UIScreen.main.bounds.width - 20) * 0.25
        for i in 0..<itemImages.count {
            let imgv = itemImages[i]

            imgv.frame = CGRect(x: itemW * CGFloat(i), y: 0, width: itemW, height: 100)
            imgv.contentMode = .center
            sectionView.addSubview(imgv)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
