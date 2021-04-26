//
//  ViewController.swift
//  ResortFeedbackProject
//
//  Created by Kirtland Ross on 4/23/21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func didRotate(from fromInterfaceOrientation: UIInterfaceOrientation) {
        switch UIDevice.current.orientation{

        case .landscapeLeft:
            self.backgroundImage.image = UIImage(named: "logo")
        case .landscapeRight:
            self.backgroundImage.image = UIImage(named: "logo")
        default:
            self.backgroundImage.image = UIImage(named: "logoVertical")
        }

    }


}

