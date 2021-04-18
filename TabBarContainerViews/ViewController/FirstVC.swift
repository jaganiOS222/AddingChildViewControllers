//
//  FirstVC.swift
//  TabBarContainerViews
//
//  Created by apple on 18/04/21.
//

import UIKit
protocol FirstVCDelegate:AnyObject {
    func tappedFirstVcButton()
}
class FirstVC: UIViewController {
    var delegate:FirstVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tappedVcButton() {
        delegate?.tappedFirstVcButton()
    }
   
}
