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
    let ud = UserDefaults.standard
    private var user : User?

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var username: UITextField!

    @IBOutlet weak var rememberMe: UISwitch!
    @IBOutlet weak var userErr: UILabel!
    @IBOutlet weak var passErr: UILabel!
    @IBOutlet weak var backgoundY: NSLayoutConstraint!
    @IBOutlet weak var backgroundImage: UIImageView!
    let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    override func viewDidLoad() {
        super.viewDidLoad()
        passErr.alpha = 0
        userErr.alpha = 0
        username.text = ud.string(forKey: "id")
        password.text = ud.string(forKey: "pass")
        if ud.bool(forKey: "bool"){
            rememberMe.isOn = true
        }

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
        user = dbhelp.getOneUser(name: username.text!)
        if user!.name == nil{
            userErr.alpha = 1
        }
        else if user!.passCheck(password.text!){
            (self.navigationController as! NavigationViewController).user = user
            self.performSegue(withIdentifier: "MainMenu", sender: self)
            passErr.alpha = 0
            userErr.alpha = 0
            if !rememberMe.isOn{
                username.text = ""
                password.text = ""
            }
        }
        else{
            passErr.alpha = 1
        }
        
    }
  
    @IBAction func rememberMe(_ sender: UISwitch) {
        if sender.isOn{

            ud.set(username.text, forKey: "id")
            ud.set(password.text, forKey: "pass")


         
        }
        else{
            ud.removeObject(forKey: "id")
            ud.removeObject(forKey: "pass")

        }
        ud.set(rememberMe.isOn, forKey: "bool")

    }
}


