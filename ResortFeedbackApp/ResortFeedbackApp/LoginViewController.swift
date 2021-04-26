//
//  ViewController.swift
//  ResortFeedbackProject
//
//  Created by Kirtland Ross on 4/23/21.
//

import UIKit

class LoginViewController: UIViewController {
//    var userDictionary : [String: User]?

    @IBOutlet weak var backgoundY: NSLayoutConstraint!
    @IBOutlet weak var backgroundImage: UIImageView!
    let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func didRotate(from fromInterfaceOrientation: UIInterfaceOrientation) {
        switch UIDevice.current.orientation{

        case .landscapeLeft:
            self.backgroundImage.image = UIImage(named: "logo")
            self.backgoundY.constant += 50
        case .landscapeRight:
            self.backgroundImage.image = UIImage(named: "logo")
            self.backgoundY.constant += 50
        default:
            self.backgroundImage.image = UIImage(named: "logoVertical")
        }

    }

    @IBAction func signIn(_ sender: Any) {

      
    }

}

