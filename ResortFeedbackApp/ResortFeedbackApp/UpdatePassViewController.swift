//
//  UpdatePassViewController.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 4/29/21.
//

import UIKit

class UpdatePassViewController: UIViewController {
    let dbhelp = DBHelper()
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var oldPass: UITextField!
    @IBOutlet weak var newPass: UITextField!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var submit: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        message.alpha = 0
        overrideUserInterfaceStyle = .dark 
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submit(_ sender: Any) {
        do{
        let user = try dbhelp.fetchUser(name: username.text!)
            if user.passCheck(oldPass.text!) && !(newPass.text!.count < 4){
            user.password = newPass.text
            dbhelp.updateData(user)
            submit.setTitle("Submit", for: .normal)
            submit.setTitleColor(.white, for: .normal)
            message.textColor = .white
            message.text = "Password Changed"
            username.text = ""
            oldPass.text = ""
            newPass.text = ""
            message.alpha = 1
        }

        else if newPass.text!.count < 4 {
            submit.setTitle("Password is too short", for: .normal)
            submit.setTitleColor(.red, for: .normal)

        }
        else{
            message.textColor = .red
            message.text = "Current Password Incorrect"
            submit.setTitle("Submit", for: .normal)
            submit.setTitleColor(.white, for: .normal)
            message.alpha = 1

        }

        }
        catch{
            submit.setTitle("Submit", for: .normal)
            submit.setTitleColor(.white, for: .normal)
            message.textColor = .red
            message.text = "User Not Found"
            message.alpha = 1
        }
    }



}
