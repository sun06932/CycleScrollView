//
//  ViewController.swift
//  CycleScrollView
//
//  Created by 孙立昂 on 2019/1/19.
//  Copyright © 2019 孙立昂. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CycleScrollViewDelegate {

    var goods_id = String()
    let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: MainWidth, height: MainHeight), style: .grouped)
    let reuseID = "detailCell"
    var alpha: CGFloat = 0
    let titleLabel: UILabel = UILabel()
    
    
    lazy var headerBackView: UIView = {
        let headerBackView = UIView(frame: CGRect(x: 0, y: 0, width: MainWidth, height: MainWidth))
        headerBackView.backgroundColor = HexRGB(rgbValue: 0xf8f8f8)
        return headerBackView
    }()
    
    lazy var cycleView: CycleScrollView = {
        CycleScrollView.initScrollView(frame: CGRect(x: 0, y: 0, width: MainWidth, height: MainWidth), delegate: self, placehoder: UIImage(named: ""), cycleOptions: CycleOptions())
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.automaticallyAdjustsScrollViewInsets = false
        ///导航条不透明时调用
        self.extendedLayoutIncludesOpaqueBars = true
        if #available(iOS 11.0, *) {
            self.tableView.contentInsetAdjustmentBehavior = .never
            
        }
        
        setNavBarView()
        setupView()
        
    }
    
    /// tabbarItem
    func setNavBarView() {
        titleLabel.frame = CGRect(x: 0, y: 0, width: 200, height: 44)
        titleLabel.text = "商品详情"
        titleLabel.textColor = HexRGB(rgbValue: 0x4d4d4d)
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.systemFont(ofSize: 17)
        titleLabel.isHidden = true
        self.navigationItem.titleView = titleLabel
        
    }
    
    ///主视图
    func setupView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = UIColor.white
        tableView.separatorStyle = .none
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: reuseID)
        tableView.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: TabBarHeight(context: self), right: 0)
        view.addSubview(tableView)
        tableView.showsVerticalScrollIndicator = false
        cycleScrollView()
    }
    
    ///轮播图
    func cycleScrollView() {
        tableView.tableHeaderView = headerBackView
        headerBackView.addSubview(cycleView)
        
        var options: CycleOptions = CycleOptions()
        options.scrollTimeInterval = 2
        options.imageViewMode = .scaleAspectFill
        cycleView.placeholderImage = UIImage()
        cycleView.options = options
  
        self.cycleView.imageURLStringsGroup = ["https://shop.shanhecang.com/o_1cdea5d481j3mfvr29i1t7uj1v13.jpg", "https://shop.shanhecang.com/o_1cdea5gqg10vn711aj3171vgvd19.jpg", "https://shop.shanhecang.com/o_1cdea5gqg1rge1cl814fr16d61bnu1a.jpg"]

    }
    
    ///轮播图代理
    func didSelectedCycleView(_ cycleScrollview: CycleScrollView, _ Index: NSInteger) {
        print("点击了第\(Index)张图片")
        
    }
    
}
//MARK: - UIScrollView 代理

extension ViewController {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let imageOffsetY = scrollView.contentOffset.y
        if scrollView == tableView {
            if imageOffsetY <= 0 {
                var rect = tableView.tableHeaderView?.frame
                rect?.origin.y = imageOffsetY
                rect?.size.height = MainWidth - imageOffsetY
                cycleView.frame = rect!
            }
        }
        
        let height = MainWidth * 0.6
        if imageOffsetY < height {
            alpha = imageOffsetY / height
            if self.navigationController?.navigationBar.isTranslucent == false {
                self.navigationController?.navigationBar.isTranslucent = true
                self.navigationController?.navigationBar.shadowImage = UIImage.init()
                
            }
            
            
        } else {
            alpha = 1
            if self.navigationController?.navigationBar.isTranslucent == true {
                self.navigationController?.navigationBar.isTranslucent = false
                self.navigationController?.navigationBar.shadowImage = nil
                
            }
            
        }
        if self.titleLabel.isHidden {
            self.titleLabel.isHidden = false
        }
        
        self.titleLabel.alpha = alpha
        self.navigationController?.navigationBar.setBackgroundImage(UIImage.imageWith(color: UIColor.init(white: 1.0, alpha: self.alpha)), for: .default)
        
        
        
    }
    
}

//MARK: - UITableView 代理
extension ViewController:UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseID, for: indexPath) as UITableViewCell
        cell.selectionStyle = .none
        cell.textLabel?.text = "textLabel"
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 30
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView()
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 1
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footer = UIView()
        return footer
        
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1
    }
    
    
}

//MARK: 视图
extension ViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.setBackgroundImage(UIImage.init(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage.init()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.setBackgroundImage(UIImage.imageWith(color: UIColor.init(white: 1.0, alpha: self.alpha)), for: .default)
        
        self.titleLabel.alpha = self.alpha
        if self.alpha == 0 {
            self.titleLabel.isHidden = true
        }
        
        if self.alpha == 1 {
            self.navigationController?.navigationBar.isTranslucent = false
            self.navigationController?.navigationBar.shadowImage = nil
            
            
        }
        
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.shadowImage = nil
        self.navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
        
    }
    
}
