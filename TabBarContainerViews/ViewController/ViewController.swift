//
//  ViewController.swift
//  TabBarContainerViews
//
//  Created by apple on 18/04/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var commonView:UIView!
    @IBOutlet weak var homtToolBar: UITabBarItem!
    private lazy var firstVC: FirstVC = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var vc = storyboard.instantiateViewController(withIdentifier: "FirstVC") as! FirstVC
        vc.delegate = self
        return vc
    }()

    private lazy var secondVC: SecondVC = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var vc = storyboard.instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        vc.delegate = self
        return vc
    }()
    private lazy var thirdVc: ThirdVC = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var vc = storyboard.instantiateViewController(withIdentifier: "ThirdVC") as! ThirdVC
        vc.delegate = self
        return vc
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addSubScreen(child: thirdVc, in: commonView)
    }
    
}
extension ViewController:FirstVCDelegate {
    func tappedFirstVcButton() {
        removeSubScreens(asChildViewController: [thirdVc,secondVC,firstVC])
        self.addSubScreen(child: secondVC, in: commonView)
    }
    
}

extension ViewController:SecondVCDelegate {
    func tappedSecondVcButton() {
        removeSubScreens(asChildViewController: [thirdVc,secondVC,firstVC])
        self.addSubScreen(child: thirdVc, in: commonView)
    }
    
}

extension ViewController:ThirdVCDelegate {
    func tappedThirdVcButton() {
        removeSubScreens(asChildViewController: [thirdVc,secondVC,firstVC])
        self.addSubScreen(child: firstVC, in: commonView)
    }
    
    
}

