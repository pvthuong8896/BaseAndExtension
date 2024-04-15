//
//  BaseViewController.swift
//  BaseProject
//
//  Created by PhungVanThuong on 15/4/24.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
    class func initWithDefautlStoryboardWithID(storyboardId: String!) -> Self {
        let className = String(describing: self)
        return instantiateFromStoryboardHelper(storyboardName: className, storyboardId: storyboardId)
    }
    
    class func initWithNib() -> Self {
        let bundle = Bundle.main
        let fileManege = FileManager.default
        let nibName = String(describing: self)
        if let pathXib = Bundle.main.path(forResource: nibName, ofType: "nib") {
            if fileManege.fileExists(atPath: pathXib) {
                return initWithNibTemplate()
            }
        }
        if let pathStoryboard = bundle.path(forResource: nibName, ofType: "storyboardc") {
            if fileManege.fileExists(atPath: pathStoryboard) {
                return initWithDefautlStoryboard()
            }
        }
        return initWithNibTemplate()
    }
    
    private class func initWithDefautlStoryboard() -> Self {
        let className = String(describing: self)
        let storyboardId = className
        return instantiateFromStoryboardHelper(storyboardName: className, storyboardId: storyboardId)
    }

    private class func instantiateFromStoryboardHelper<T>(storyboardName: String, storyboardId: String) -> T {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: storyboardId) as! T
        return controller
    }
    
}
