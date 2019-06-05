//
//  String+SubString.swift
//  LeaseeApp
//
//  Created by yang bin on 2018/12/19.
//  Copyright © 2018 morningstar. All rights reserved.
//

import Foundation


// MARK: - 给String扩展SubString方法
extension String {

    /// SubStringk从某个位置开始
    ///
    /// - Parameter index: 开始下标
    /// - Returns: String类型的字符串
    public func substring(from index: Int) -> String {
        guard index < self.count, index >= 0 else {
            return ""
        }
        let startIndex = self.index(self.startIndex, offsetBy: index)
        let subString = self[startIndex..<self.endIndex]
        return String(subString)

    }

    /// SubString 到某个位置
    ///
    /// - Parameter index: 结束下标
    /// - Returns: String类型的字符串
    public func substring(to index: Int) -> String {

        guard  index < self.count  else {
            return self
        }
        let endIndex = self.index(self.startIndex, offsetBy: index)
        let subString = self[self.startIndex..<endIndex]
        return String(subString)
    }

    //获取子字符串
    func substingInRange(_ r: Range<Int>) -> String? {
        if r.lowerBound < 0 || r.upperBound > self.count {
            return nil
        }
        let startIndex = self.index(self.startIndex, offsetBy:r.lowerBound)
        let endIndex   = self.index(self.startIndex, offsetBy:r.upperBound)
        return String(self[startIndex..<endIndex])
    }

}
