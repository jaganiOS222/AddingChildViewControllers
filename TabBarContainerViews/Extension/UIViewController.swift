//
//  UIViewController.swift
//  TabBarContainerViews
//
//  Created by apple on 18/04/21.
//

import UIKit

extension UIViewController {
    
    
    func addSubScreen(child childViewController: UIViewController, in view: UIView) {
        view.addSubview(childViewController.view)
       addChild(childViewController)
       view.addSubview(childViewController.view)
        childViewController.view.frame = view.bounds
        childViewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        childViewController.didMove(toParent: self)
   }
   
    func removeSubScreens(asChildViewController viewController: [UIViewController]) {
        for view in viewController {
            view.willMove(toParent: nil)
            view.view.removeFromSuperview()
            view.removeFromParent()
        }
       
   }
    
}
