//
//  StringExtension.swift
//  BaseProject_Example
//
//  Created by PhungVanThuong on 15/4/24.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

extension String {
    func getDateWithFormat(_ format: String) -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        if let date = formatter.date(from: self) {
            return date
        } else {
            return nil
        }
    }

    func isPhoneNumberInvalid() -> Bool {
        if self.isEmpty {
            return false
        }
        let charcterSet  = NSCharacterSet(charactersIn: "+0123456789").inverted
        let phoneNumber = self
        let inputString = phoneNumber.components(separatedBy: charcterSet)
        let filtered = inputString.joined(separator: "")
        return  phoneNumber == filtered
    }

    func phoneNumber() -> String! {

        if let firstNumber = self.first {

            if firstNumber == "0" {
                var text = self
                text.remove(at: text.startIndex)
                return text
            }
        }
        return self
    }

    func isNumberInvalid() -> Bool {
        if Int(self) != nil {
            return true
        }
        return false
    }

    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedStringKey.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }

    func heightOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedStringKey.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.height
    }
    
    func removeSpecialCharactersFromPhoneNumber() -> String {
        var tmpString = self.replacingOccurrences(of: " ", with: "")
        tmpString = tmpString.replacingOccurrences(of: "-", with: "")
        tmpString = tmpString.replacingOccurrences(of: "+", with: "")
        tmpString = tmpString.replacingOccurrences(of: "(", with: "")
        tmpString = tmpString.replacingOccurrences(of: ")", with: "")
        return tmpString
    }
}
