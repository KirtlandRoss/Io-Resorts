//
//  SignUpViewController.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 4/26/21.
//

import UIKit

class SignUpViewController: UINavigationController {

    @IBOutlet weak var logoY: NSLayoutConstraint!
    @IBOutlet weak var logoX: NSLayoutConstraint!
    @IBOutlet weak var backgroundLogo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func didRotate(from fromInterfaceOrientation: UIInterfaceOrientation) {
        switch UIDevice.current.orientation{

        case .landscapeLeft:
            self.backgroundLogo.image = UIImage(named: "logo")
            self.logoY.constant += 50
        case .landscapeRight:
            self.backgroundLogo.image = UIImage(named: "logo")
            self.logoY.constant += 50
        default:
            self.backgroundLogo.image = UIImage(named: "logoVertical")
        }

    }

}
