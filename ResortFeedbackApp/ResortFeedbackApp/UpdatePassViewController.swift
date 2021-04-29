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

    override func viewDidLoad() {
        super.viewDidLoad()
        message.alpha = 0

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submit(_ sender: Any) {
        let user = dbhelp.getOneUser(name: username.text!)
        if user.passCheck(oldPass.text!){
            user.password = newPass.text
            dbhelp.updateData(user)
            message.text = "Password Changed"
            username.text = ""
            oldPass.text = ""
            newPass.text = ""
            message.alpha = 1
        }
        else{
            message.text = "Current Password Incorrect"
            message.alpha = 1

        }

    }



}
