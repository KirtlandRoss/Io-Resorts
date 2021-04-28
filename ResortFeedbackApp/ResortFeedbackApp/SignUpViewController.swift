//
//  SignUpViewController.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 4/26/21.
//

import UIKit

class SignUpViewController: UIViewController {
    var dbhelp = DBHelper()
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var logoY: NSLayoutConstraint!
    @IBOutlet weak var logoX: NSLayoutConstraint!
    @IBOutlet weak var backgroundLogo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // Make the navigation bar background clear
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true

    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // Restore the navigation bar to default
        navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
        navigationController?.navigationBar.shadowImage = nil
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
    @IBAction func submit(_ sender: Any) {

        let dict = ["name": username.text!, "password": password.text!]


       

        dbhelp.addData(dict)
        _ = navigationController?.popToRootViewController(animated: true)

    }


        
}
