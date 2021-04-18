//
//  ThirdVC.swift
//  TabBarContainerViews
//
//  Created by apple on 18/04/21.
//

import UIKit
protocol ThirdVCDelegate:AnyObject {
    func tappedThirdVcButton()
}

class ThirdVC: UIViewController {
    var delegate:ThirdVCDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func tappedVcButton() {
        delegate?.tappedThirdVcButton()
    }
    
}
