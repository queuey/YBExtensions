//
//  String+Emptiness.swift
//  LeaseeApp
//
//  Created by yang bin on 2018/12/21.
//  Copyright © 2018 morningstar. All rights reserved.
//

import Foundation



// MARK: - String 判断是否不为nil 且长度不为0
extension String {

    /// 值非空 返回true
    var isSome: Bool {
        return !isEmpty
    }
}
