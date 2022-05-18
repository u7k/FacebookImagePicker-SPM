//
//  UIView+Animations.swift
//  GBHFacebookImagePicker
//
//  Created by Florian Gabach on 05/12/2018.
//

#if canImport(UIKit)
import UIKit
#endif

extension UIView {
    func bounce() {
        let duration = 0.1
        
        UIView.animate(withDuration: duration, animations: {
            self.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
        }) { _ in
            UIView.animate(withDuration: duration, animations: {
                self.transform = CGAffineTransform.identity
            }, completion: nil)
        }
    }
}
