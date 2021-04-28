//
//  ViewController.swift
//  ResortFeedbackProject
//
//  Created by Kirtland Ross on 4/23/21.
//

import UIKit

class LoginViewController: UIViewController {
    var userDictionary : [String: User]?
    var dbhelp = DBHelper()


    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var username: UITextField!

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
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // Make the navigation bar background clear
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        UINavigationBar.appearance().backIndicatorImage = UIImage(named: "button")
        UINavigationBar.appearance().backIndicatorTransitionMaskImage = UIImage(named: "button")

    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // Restore the navigation bar to default
        navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
        navigationController?.navigationBar.shadowImage = nil
    }

    @IBAction func signIn(_ sender: Any) {
        let user = dbhelp.getOneData(name: username.text!)
        if user.passCheck(password.text!){
            (self.navigationController as! NavigationViewController).user = user

            self.performSegue(withIdentifier: "MainMenu", sender: self)


        }
        
    }
  
}

