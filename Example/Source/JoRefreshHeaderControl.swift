//
//  JoRefreshHeaderControl.swift
//  iOS Example
//
//  Created by django on 7/20/17.
//  Copyright © 2017 django. All rights reserved.
//

import UIKit
import JoRefresh

class JoRefreshHeaderControl: JoRefreshControl {
    
    let lable: UILabel = UILabel()
    
    override func updatePercent(_ percent: CGFloat) {
        super.updatePercent(percent)
        
        if isRefreshing {
            lable.text = "刷新中"
        } else {
            lable.text = percent == 1 ? "松手刷新" : "下拉刷新"
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(lable)
        lable.textColor = .black
        lable.textAlignment = .center
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        lable.frame = bounds
        backgroundColor = UIColor(white: 1, alpha: 0.5)
        layer.borderWidth = 1
    }

}

// MARK: Setup

extension JoRefreshHeaderControl {
    

}

