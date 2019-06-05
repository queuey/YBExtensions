//
//  NSMutableAttributedString-Extension.swift
//  LeaseeApp
//
//  Created by yang bin on 2019/1/9.
//  Copyright © 2019 morningstar. All rights reserved.
//


// MARK: - NSMutableAttributedString 扩展
extension NSMutableAttributedString {



    ///  给SubView加特殊颜色和字体
    ///
    /// - Parameters:
    ///   - string: String整串
    ///   - attributedStrings: subString数组
    ///   - color: 要改变的颜色
    ///   - font: 特殊字体
    convenience init(string: String, attributedStrings: [String], color: UIColor, font: UIFont) {
        let attributeString = NSMutableAttributedString(string: string)

        for subString in attributedStrings {
            let range = (string as NSString).range(of: subString)
            attributeString.addAttributes([.foregroundColor: color, .font: font], range: range)
        }

        self.init(attributedString: attributeString)
    }


    
    /// 通过富文本来设置行间距
    ///
    /// - Parameters:
    ///   - string: String整串
    ///   - color: String颜色
    ///   - font: 特殊字体
    ///   - lineSpacing: 行间距
    convenience init(string: String, color: UIColor, font: UIFont, lineSpacing: Int) {
        let attributeString = NSMutableAttributedString(string: string)

        let paraph = NSMutableParagraphStyle()
        //设置行间距
        paraph.lineSpacing = CGFloat(lineSpacing)
        attributeString.addAttributes([.font:font,.paragraphStyle: paraph], range: NSRange(location: 0, length: string.count))

        self.init(attributedString: attributeString)
    }

}
