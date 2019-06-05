//
//  UIAlertViewController-ShowAlert.swift
//  ChannelProviderAPP
//
//  Created by yang bin on 2018/3/27.
//  Copyright © 2018年 聚信国际. All rights reserved.
//

import UIKit

extension UIAlertController {


    class func showAlert(present: UIViewController?, title: String?, message: String?, done: String?, doneHandler: ((UIAlertAction) -> Void)? = nil,cancel: String?, cancelHandler: ((UIAlertAction) -> Void)? = nil) {

        let present = present.or(self.currentVc())
        let title = title.or("")
        let message = message.or("")

        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        if (cancel.isSome) {
            alert.addAction(UIAlertAction(title: cancel, style: .cancel, handler: cancelHandler))
        }
        if (done.isSome) {
            alert.addAction(UIAlertAction(title: done, style: .default, handler: doneHandler))
        }
        present.present(alert, animated: true, completion: nil)
    }


    class func showAlert(present: UIViewController?, message: String, cancel: String = "取消", done: String = "确定", doneHandler: ((UIAlertAction) -> Void)? = nil) {
        UIAlertController.showAlert(present: present, title: nil, message: message, done: done, doneHandler: doneHandler, cancel: cancel, cancelHandler: nil)
    }




    /// 特殊需求---自定义按钮颜色
    ///
    class func showGreenAlert(present: UIViewController?, message: String, cancel: String = "取消", done: String = "确定", doneHandler: ((UIAlertAction) -> Void)? = nil) {
        let present = present.or(self.currentVc())

        let alert = UIAlertController(title: "", message: message, preferredStyle: UIAlertController.Style.alert)
        if (cancel.isSome) {
            alert.addAction(UIAlertAction(title: cancel, style: .cancel, handler: nil).with(configure: { (cancelAction) in
                cancelAction.setValue(UIColor(hex: "9B9B9B"), forKey: "titleTextColor")
            }))
        }
        if (done.isSome) {
            alert.addAction(UIAlertAction(title: done, style: .default, handler: doneHandler).with(configure: { (doneAction) in
                doneAction.setValue(UIColor(hex: "1B9033"), forKey: "titleTextColor")
            }))
        }
        present.present(alert, animated: true, completion: nil)
    }



    ///获取当前控制器
    private class func currentVc() ->UIViewController {

        var vc = UIApplication.shared.keyWindow?.rootViewController

        if (vc?.isKind(of: UITabBarController.self))! {
            vc = (vc as! UITabBarController).selectedViewController
        }else if (vc?.isKind(of: UINavigationController.self))!{
            vc = (vc as! UINavigationController).visibleViewController
        }else if ((vc?.presentedViewController) != nil){
            vc =  vc?.presentedViewController
        }
        return vc!
    }

}
