//
//  UIViewController+Extension.swift
//  LeaseeApp
//
//  Created by yang bin on 2019/1/21.
//  Copyright © 2019 morningstar. All rights reserved.
//

import UIKit

extension UIViewController {

    public func prefersLargeTitle() {
        if #available(iOS 11.0, *) {
            navigationController?.navigationBar.prefersLargeTitles = true
            navigationItem.largeTitleDisplayMode = .automatic
            navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black,
                                                                            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 32)]
            extendedLayoutIncludesOpaqueBars = true
        }
    }

    public func prefersNormalTitle() {
        if #available(iOS 11.0, *) {
            navigationController?.navigationBar.prefersLargeTitles = false
        }
    }

}
