//
//  UIBarButtonItem+Init.swift
//  LeaseeApp
//
//  Created by yang bin on 2018/9/25.
//  Copyright © 2018 morningstar. All rights reserved.
//

import Foundation


extension UIBarButtonItem {


    struct AssociatedClosureClass {
        var eventClosure: ()->()
    }

    private struct AssociatedKeys {
        static var eventClosureObj: AssociatedClosureClass?
    }

    private var eventClosureObj: AssociatedClosureClass {
        set{
            objc_setAssociatedObject(self, &AssociatedKeys.eventClosureObj, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        get{
            return (objc_getAssociatedObject(self, &AssociatedKeys.eventClosureObj) as? AssociatedClosureClass)!
        }

    }


    convenience init(title: String?, target: Any?, action:@escaping ()->()) {
        self.init()
        eventClosureObj = AssociatedClosureClass(eventClosure: action)
//        .style = UIBarButtonItem.Style.plain
// self.init(title: title, style: UIBarButtonItem.Style.plain, target: target, action: #selector(eventExcuate))
        self.title = title
        self.target = target as AnyObject
        self.action = #selector(eventExcuate)
    }



    @objc private func eventExcuate() {
        eventClosureObj.eventClosure()
    }


}
