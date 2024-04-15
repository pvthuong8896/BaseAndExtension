//
//  UITableViewCellExtension.swift
//  BaseProject_Example
//
//  Created by PhungVanThuong on 15/4/24.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

extension UITableViewCell {
    class func nibName() -> String {
        let nibName = String(describing: self)
        
        return nibName
    }
}
