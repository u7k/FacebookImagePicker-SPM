//
//  UIBarButtonItem+Extensions.swift
//  Bolts
//
//  Created by Florian Gabach on 11/05/2018.
//

#if canImport(UIKit)
import UIKit
#endif

extension UIBarButtonItem {
    class func flexibleSpaceItem() -> UIBarButtonItem {
        let spaceItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        return spaceItem
    }
}
