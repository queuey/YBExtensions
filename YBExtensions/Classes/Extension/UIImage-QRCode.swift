//
//  UIImage-QRCode.swift
//  ChannelProviderAPP
//
//  Created by yang bin on 2018/3/21.
//  Copyright © 2018年 聚信国际. All rights reserved.
//

import UIKit

extension UIImage {
    
    //创建二维码图片
   class func createQRForString(qrString: String?, qrImageName: String?) -> UIImage?{
        if (qrString?.isEmpty)! {
            return nil
        }
        let stringData = qrString?.data(using: .utf8, allowLossyConversion: false)
        // 创建一个二维码的滤镜
        let qrFilter = CIFilter(name: "CIQRCodeGenerator")!
        qrFilter.setValue(stringData, forKey: "inputMessage")
        qrFilter.setValue("H", forKey: "inputCorrectionLevel")
        let qrCIImage = qrFilter.outputImage
        
        // 创建一个颜色滤镜,黑白色
        let colorFilter = CIFilter(name: "CIFalseColor")!
        colorFilter.setDefaults()
        colorFilter.setValue(qrCIImage, forKey: "inputImage")
        colorFilter.setValue(CIColor(red: 0, green: 0, blue: 0), forKey: "inputColor0")
        colorFilter.setValue(CIColor(red: 1, green: 1, blue: 1), forKey: "inputColor1")
        
        // 返回二维码image
    let codeImage = UIImage(ciImage: colorFilter.outputImage!.transformed(by: CGAffineTransform(scaleX: 100, y: 100)))
        
    
        // 通常,二维码都是定制的,中间都会放想要表达意思的图片
        if let iconImage = UIImage(named: qrImageName!) {
            let rect = CGRect(x:0, y:0, width:codeImage.size.width,
                              height:codeImage.size.height)
            UIGraphicsBeginImageContext(rect.size)
            
            codeImage.draw(in: rect)
            let avatarSize = CGSize(width:rect.size.width * 0.25,
                                    height:rect.size.height * 0.25)
            let x = (rect.width - avatarSize.width) * 0.5
            let y = (rect.height - avatarSize.height) * 0.5
            iconImage.draw(in: CGRect(x:x, y:y, width:avatarSize.width,
                                      height:avatarSize.height))
            let resultImage = UIGraphicsGetImageFromCurrentImageContext()
            
            UIGraphicsEndImageContext()
            return resultImage
        }
        return codeImage
    }
    
    
    
}
