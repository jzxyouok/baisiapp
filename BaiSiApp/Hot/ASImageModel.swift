//
//  ASImageModel.swift
//  BaiSiApp
//
//  Created by ashen on 16/4/6.
//  Copyright © 2016年 Ashen<http://www.devashen.com>. All rights reserved.
//

import UIKit

class ASImageModel: NSObject,NSCoding {
//    "image": {
//    "medium": [ ],
//    "big": [
//    "http://wimg.spriteapp.cn/ugc/2016/04/04/57027a5cc28ec_1.jpg"
//    ],
//    "download_url": [
//    "http://wimg.spriteapp.cn/ugc/2016/04/04/57027a5cc28ec_d.jpg",
//    "http://wimg.spriteapp.cn/ugc/2016/04/04/57027a5cc28ec.jpg"
//    ],
//    "height": 748,
//    "width": 600,
//    "small": [ ]
//    },
    
    
    var big = [String]()
    var height = 0
    var width = 0
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(big, forKey: "big")
        aCoder.encodeObject(height, forKey: "height")
        aCoder.encodeObject(width, forKey: "width")
    }
    
    override init() {
        super.init()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init()
        self.big = aDecoder.decodeObjectForKey("big") as! [String]
        self.height = aDecoder.decodeObjectForKey("height") as! Int
        self.width = aDecoder.decodeObjectForKey("width") as! Int
    }
}
