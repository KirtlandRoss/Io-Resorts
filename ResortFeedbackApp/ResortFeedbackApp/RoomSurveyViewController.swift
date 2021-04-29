//
//  RoomSurveyViewController.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 4/28/21.
//

import UIKit

class RoomSurveyViewController: UIViewController {

    @IBOutlet weak var question1: UILabel!

    @IBOutlet weak var question3: UILabel!
    @IBOutlet weak var question2: UILabel!
    @IBOutlet weak var question4: UILabel!
    @IBOutlet weak var question5: UILabel!
    var user : User?


    override func viewDidLoad() {
        super.viewDidLoad()
        user = (self.navigationController as! NavigationViewController).user

    }
    
    @IBAction func q1Select(_ sender: UISegmentedControl) {

        if user?.roomResults != nil{


        }
    }



}
