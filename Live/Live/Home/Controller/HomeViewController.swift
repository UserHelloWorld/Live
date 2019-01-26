//
//  HomeViewController.swift
//  Live
//
//  Created by apple on 26/12/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit
private let kTitleViewH = 40
class HomeViewController: UIViewController {
    private lazy var pageTitleView : PageTitleView = {
        let titleFrame = CGRect(x: 0, y: 64, width: Int(kScreenWidth), height: kTitleViewH)
        let titles = ["推荐", "游戏", "娱乐", "趣q玩"]
        let titleView = PageTitleView(frame: titleFrame, title: titles)
        return titleView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      	 self.setupUI()
        
        
        
    }

}


extension HomeViewController {
    private func setupUI() {
        automaticallyAdjustsScrollViewInsets = false
        setupNavigationBar()
        view.addSubview(pageTitleView)
    }
    private func setupNavigationBar() {
        let btn = UIButton()
    
        btn.setImage(UIImage(named: "logo"), for: UIControl.State.normal)
   		btn.sizeToFit()
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btn)
    }
}
