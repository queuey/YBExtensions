//
//  UIKit+BuilderPattern.swift
//  LeaseeApp
//
//  Created by ttttfix on 2018/12/26.
//  Copyright © 2018 morningstar. All rights reserved.
//

import UIKit


// Builder allows you to create an instance and setting it up in a simple way:
protocol Builder {}


extension Builder {
    public func with(configure: (inout Self) -> Void) -> Self {
        var this = self
        configure(&this)
        return this
    }
}

// We need NSObject to conform to Builder to enable it for all subclasses of it 😊
extension NSObject: Builder {

}


