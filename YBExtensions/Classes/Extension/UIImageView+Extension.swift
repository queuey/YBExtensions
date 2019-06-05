
//
//  UIImageView+Extension.swift
//  LeaseeApp
//
//  Created by yang bin on 2019/1/21.
//  Copyright © 2019 morningstar. All rights reserved.
//

import UIKit

extension UIImageView {

    convenience init(imageName: String) {
        self.init(image: UIImage(named: imageName))
    }

}
