//
//  UIButton+Closures.swift
//  LeaseeApp
//
//  Created by yang bin on 2018/9/26.
//  Copyright © 2018 morningstar. All rights reserved.
//

import Foundation


extension UIButton {
    
    struct AssociatedClosureClass {
        var eventClosure: ()->()
    }

    private struct AssociatedKeys {
        static var onekey: AssociatedClosureClass?
    }

    private var eventClosureObj: AssociatedClosureClass {
        set{
            objc_setAssociatedObject(self, &AssociatedKeys.onekey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        get{
            return (objc_getAssociatedObject(self, &AssociatedKeys.onekey) as? AssociatedClosureClass)!
        }
    }


    func addAction(for controlEvents: UIControl.Event = UIControl.Event.touchUpInside,action: @escaping ()->()) {
        let eventObject = AssociatedClosureClass(eventClosure: action)
        eventClosureObj = eventObject
        addTarget(self, action: #selector(eventExcuate(_:)), for: controlEvents)
    }

    @objc private func eventExcuate(_ sender: UIButton){
        eventClosureObj.eventClosure()
    }


}
