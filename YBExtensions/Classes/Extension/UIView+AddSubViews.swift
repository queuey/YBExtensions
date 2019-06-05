//
//  UIView+AddSubViews.swift
//  LeaseeApp
//
//  Created by ttttfix on 2018/12/26.
//  Copyright © 2018 morningstar. All rights reserved.
//

import Foundation


extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach(addSubview)
    }
}
