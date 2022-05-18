//
//  UIViewController+Childs.swift
//  Bolts
//
//  Created by Florian Gabach on 14/11/2018.
//

#if canImport(UIKit)
import UIKit
#endif

extension UIViewController {
    func add(_ child: UIViewController) {
        self.addChild(child)
        self.view.addSubview(child.view)
        child.view.pinEdges(to: self.view)
        child.didMove(toParent: self)
    }

    func remove() {
        guard parent != nil else {
            return
        }
        self.willMove(toParent: nil)
        self.removeFromParent()
        self.view.removeFromSuperview()
    }
}
