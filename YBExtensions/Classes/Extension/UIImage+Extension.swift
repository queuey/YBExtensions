//
//  UIImage+Extension.swift
//  LeaseeApp
//
//  Created by yang bin on 2018/10/22.
//  Copyright © 2018 morningstar. All rights reserved.
//

import Foundation



extension UIImage {
    class func imageWithColor(_ color :UIColor) -> UIImage {

        let rect = CGRect(x:0,y:0,width:1,height:1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(color.cgColor)
        context!.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
}
