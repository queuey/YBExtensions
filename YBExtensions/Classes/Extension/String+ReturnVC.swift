//
//  String+ReturnVC.swift
//  LeaseeApp
//
//  Created by yang bin on 2018/12/13.
//  Copyright © 2018 morningstar. All rights reserved.
//


/*
 * 根据String字符串查找同名ViewController并返回
 */

import Foundation



// MARK: - 根据ClassStr 返回ViewController对象
extension String {


    /// 通过nib文件获取Controller
    ///
    /// - Parameter storyboardName: StoryBoard 名字
    /// - Returns: 返回一个ViewController可选类型
    func getViewControllerWithNib(_ storyboardName:String) -> UIViewController? {

       let viewController = UIStoryboard(name: storyboardName, bundle: nil).instantiateViewController(withIdentifier: self)
       return viewController

    }

    /// 根据String直接获取ViewController
    ///
    /// - Returns: <#return value description#>
    func getViewController() -> UIViewController? {
        //根据字符串获取对应的class，在Swift中不能直接使用

        //Swift中命名空间的概念
        guard let nameSpage = Bundle.main.infoDictionary!["CFBundleExecutable"] as? String else {
            print("\(self)没有命名空间")
            return nil
        }
        guard let childVcClass = NSClassFromString(nameSpage + "." + self) else {
            print("\(self)没有获取到对应的class")
            return nil
        }
        guard let childVcType = childVcClass as? UIViewController.Type else {
            print("\(self)没有得到的类型")
            return nil
        }
        //根据类型创建对应的对象
        let vc = childVcType.init()

        return vc
    }

///会报错

///因为通过StoryBoard通过id加载时，如果ID错误会直接crash

//    func getViewControllerNibOrCoder(_ storyboardName:String) -> UIViewController? {
//
//        /// 先去通过nib方式查找
//        if let viewController = self.getViewControllerWithNib(storyboardName) {
//            return viewController
//        }
//
//        /// 如果没有，则试图直接拿到
////        if let viewcontroller = self.getViewController() {
////            return viewcontroller
////        }
//
//        return nil
//    }

}


