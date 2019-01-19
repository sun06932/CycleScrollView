//
//  CycleCollectionViewCell.swift
//  ShanHeCang
//
//  Created by 孙立昂 on 2018/12/14.
//  Copyright © 2018 SJKG. All rights reserved.
//

import UIKit

class CycleCollectionViewCell: UICollectionViewCell {
    var imageView: UIImageView!
    var isOnlyDisplayText: Bool?
    var isConfigured: Bool! = false
    var titleLabelHeight : CGFloat = 30
    private var titleLabel: UILabel?

    
    //MARK: titleLabel属性
    var numberOfLine: NSInteger = 1 {
        didSet {
            titleLabel?.numberOfLines = numberOfLine
        }
    }
    
    var title: String? {
        didSet {
            titleLabel?.text = title
            if (titleLabel?.isHidden)! {
                titleLabel?.isHidden = false
            }
        }
    }
    
    var titleLabelTextColor: UIColor? {
        didSet {
            self.titleLabel?.textColor = titleLabelTextColor
        }
    }
    
    var titleLabelTextFont: UIFont? {
        didSet {
            self.titleLabel?.font = titleLabelTextFont
        }
    }
    
    var titleLabelBackgroundColor: UIColor? {
        didSet {
            titleLabel?.backgroundColor = titleLabelBackgroundColor
        }
    }
    
    var titleLabelTextAlignment: NSTextAlignment? {
        didSet {
            self.titleLabel?.textAlignment = titleLabelTextAlignment!
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupImageView()
        setupTitleLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupImageView() {
        imageView = UIImageView.init()
        self.contentView.addSubview(imageView)
    }
    
    func setupTitleLabel() {
        titleLabel = UILabel.init()
        titleLabel?.isHidden = true
        self.contentView.addSubview(titleLabel!)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if self.isOnlyDisplayText! {
            titleLabel?.frame = bounds
        } else {
            imageView.frame = bounds
            titleLabel?.frame = .init(x: 0, y: height - titleLabelHeight, width: width, height: titleLabelHeight)
        }
    }
    
}
