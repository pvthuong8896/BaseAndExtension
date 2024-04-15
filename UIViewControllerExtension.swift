//
//  UIViewControllerExtension.swift
//  BaseProject_Example
//
//  Created by PhungVanThuong on 15/4/24.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    class func initWithNibTemplate<T>() -> T {
        let nibName = String(describing: self)
        let viewcontroller = self.init(nibName: nibName, bundle: Bundle.main)
        return viewcontroller as! T
    }
    
    func setCustomTitleWithColor(title: String, color: UIColor, fontType: UIFont = UIFont.systemFont(ofSize: 17.0, weight: .semibold)){
        var lblTitle: UILabel
        let attributes: NSDictionary = [NSAttributedString.Key.foregroundColor: color, NSAttributedString.Key.font: fontType]
        let titleContent = NSAttributedString(string: title, attributes: attributes as? [NSAttributedString.Key : Any])
        lblTitle = UILabel.init()
        lblTitle.attributedText = titleContent
        lblTitle.sizeToFit()
        self.navigationItem.titleView = lblTitle
        self.navigationController?.navigationBar.isTranslucent = false
    }
    
    @objc func customDismissVC() {
        self.dismiss(animated: true, completion: nil)
    }
    
    func makeRoundedView(layer: CALayer, cornerRadius: CGFloat) {
        layer.masksToBounds = true
        layer.cornerRadius = cornerRadius
    }

    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer =
            UITapGestureRecognizer(target: self,
                                   action: #selector(UIViewController.hideKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
}
