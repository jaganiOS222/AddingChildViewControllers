//
//  SecondVC.swift
//  TabBarContainerViews
//
//  Created by apple on 18/04/21.
//

import UIKit
protocol SecondVCDelegate:AnyObject {
    func tappedSecondVcButton()
}

class SecondVC: UIViewController {
    var delegate:SecondVCDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func tappedVcButton() {
        delegate?.tappedSecondVcButton()
    }
    

}
