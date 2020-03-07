//
//  Extension.swift
//  C0775696_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
import  UIKit

extension String{
    func emailValid() -> Bool{      //https://stackoverflow.com/questions/27998409/email-phone-validation-in-swift
        let emailRegEx = "[A-Z0-9a-z.%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
    func mobileValid() -> Bool{         //https://stackoverflow.com/questions/27998409/email-phone-validation-in-swift
        let mobileNumberRegEx = "[0-9]{10}"
        let mobileTest = NSPredicate(format: "SELF MATCHES %@", mobileNumberRegEx)
        return mobileTest.evaluate(with: self)
    }
}
//http://brainwashinc.com/2017/07/21/loading-activity-indicator-ios-swift/
var vSpinner : UIView?
 
extension UIViewController {
    func showSpinner(onView : UIView) {
        let spinnerView = UIView.init(frame: onView.bounds)
        spinnerView.backgroundColor = UIColor.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        let ai = UIActivityIndicatorView.init(style: .large)
        ai.startAnimating()
        ai.center = spinnerView.center
        
        DispatchQueue.main.async {
            spinnerView.addSubview(ai)
            onView.addSubview(spinnerView)
        }
        
        vSpinner = spinnerView
    }
    
    func removeSpinner() {
        DispatchQueue.main.async {
            vSpinner?.removeFromSuperview()
            vSpinner = nil
        }
    }
}
