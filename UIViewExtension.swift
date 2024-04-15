//
//  UIViewExtension.swift
//  BaseProject_Example
//
//  Created by PhungVanThuong on 15/4/24.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    class func nibDefault() -> UINib {
        let nibName = String(describing: self)
        let nib = UINib.init(nibName: nibName, bundle: nil)
        return nib
    }
}
