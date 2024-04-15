//
//  TextfieldExtension.swift
//  BaseProject_Example
//
//  Created by PhungVanThuong on 15/4/24.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    func addRightIcon(icon: UIImage, frame: CGRect?) {
        let imageView = UIImageView(frame: frame ?? CGRect(x: 5, y: 5, width: 30, height: 30))
        imageView.image = icon
        self.rightViewMode = UITextFieldViewMode.always
        self.rightView = imageView
    }
    
    func addLeftIcon(icon: UIImage, frame: CGRect?) {
        let imageView = UIImageView(frame: frame ?? CGRect(x: 5, y: 5, width: 30, height: 30))
        imageView.image = icon
        self.leftViewMode = UITextFieldViewMode.always
        self.leftView = imageView
    }
    
    func addSecuButton(normalIcon: UIImage, selectedIcon: UIImage, frame: CGRect?) {
        let button = UIButton(frame: frame ?? CGRect(x: 5, y: 5, width: 30, height: 30))
        button.setImage(normalIcon, for: .normal)
        button.setImage(selectedIcon, for: .selected)
        button.isSelected = true
        button.addTarget(self, action: #selector(onSelectSecu), for: .touchUpInside)
        self.rightViewMode = UITextFieldViewMode.always
        self.rightView = button
    }
    
    @objc func onSelectSecu() {
        self.isSecureTextEntry = !self.isSecureTextEntry
        self.isSelected = !self.isSelected
    }
}
