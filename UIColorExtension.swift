//
//  UIColorExtension.swift
//
//  Created by go on 8/10/14.
//  Copyright (c) 2014 bitgather. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(red255: CGFloat, green255: CGFloat, blue255: CGFloat, alpha255: CGFloat = 255.0)
    {
        self.init(red: red255 / 255.0, green: green255 / 255.0, blue: blue255 / 255.0, alpha: alpha255 / 255.0)
    }
    
    convenience init(hex: UInt32, alpha: CGFloat = 1.0)
    {
        let red:CGFloat   = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        let green:CGFloat = CGFloat((hex & 0x00FF00) >> 8) / 255.0
        let blue:CGFloat  = CGFloat((hex & 0x0000FF)) / 255.0
        
        self.init(red:red, green:green, blue:blue, alpha:alpha)
    }
    
    convenience init(hexa: UInt32)
    {
        let red:CGFloat   = CGFloat((hexa & 0xFF000000) >> 24) / 255.0
        let green:CGFloat = CGFloat((hexa & 0x00FF0000) >> 16) / 255.0
        let blue:CGFloat  = CGFloat((hexa & 0x0000FF00) >> 8) / 255.0
        let alpha:CGFloat = CGFloat((hexa & 0x000000FF)) / 255.0
        
        self.init(red:red, green:green, blue:blue, alpha:alpha)
    }
    
    class func color255(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat = 255.0) -> UIColor!
    {
        return UIColor(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: alpha / 255.0)
    }
    
    class func colorHex(hex: UInt32, alpha: CGFloat = 1.0) -> UIColor!
    {
        let red:CGFloat   = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        let green:CGFloat = CGFloat((hex & 0x00FF00) >> 8) / 255.0
        let blue:CGFloat  = CGFloat((hex & 0x0000FF)) / 255.0
        
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    class func colorHexa(hexa: UInt32) -> UIColor!
    {
        let red:CGFloat   = CGFloat((hexa & 0xFF000000) >> 24) / 255.0
        let green:CGFloat = CGFloat((hexa & 0x00FF0000) >> 16) / 255.0
        let blue:CGFloat  = CGFloat((hexa & 0x0000FF00) >> 8) / 255.0
        let alpha:CGFloat = CGFloat((hexa & 0x000000FF)) / 255.0
        
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    class func random() -> UIColor!
    {
        let r:CGFloat = CGFloat(arc4random() % UInt32(255));
        let g:CGFloat = CGFloat(arc4random() % UInt32(255));
        let b:CGFloat = CGFloat(arc4random() % UInt32(255));
        return UIColor.color255(r, green: g, blue: b, alpha: 255.0)
    }
    
    class func randoma() -> UIColor!
    {
        let r:CGFloat = CGFloat(arc4random() % UInt32(255));
        let g:CGFloat = CGFloat(arc4random() % UInt32(255));
        let b:CGFloat = CGFloat(arc4random() % UInt32(255));
        let a:CGFloat = CGFloat(arc4random() % UInt32(255));
        return UIColor.color255(r, green: g, blue: b, alpha: a)
    }
}