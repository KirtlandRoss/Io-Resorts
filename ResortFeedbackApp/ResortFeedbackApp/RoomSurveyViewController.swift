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
    @IBOutlet weak var q1Sel: UISegmentedControl!
    @IBOutlet weak var q2Sel: UISegmentedControl!
    @IBOutlet weak var q3Sel: UISegmentedControl!
    @IBOutlet weak var q4Sel: UISegmentedControl!
    @IBOutlet weak var q5Sel: UISegmentedControl!
    var user : User?
    let dbHelp = DBHelper()

    override func viewDidLoad() {
        super.viewDidLoad()
        user = (self.navigationController as! NavigationViewController).user!
        if user!.roomResults == nil{
            user!.roomResults = Results()
        }
        else{
            if user!.roomResults?.q1 != nil{
                q1Sel.selectedSegmentIndex = Int(exactly: user!.roomResults!.q1)!
            }
            if user!.roomResults?.q2 != nil{
                q2Sel.selectedSegmentIndex = Int(exactly: user!.roomResults!.q2)!
            }
            if user!.roomResults?.q3 != nil{
                q3Sel.selectedSegmentIndex = Int(exactly: user!.roomResults!.q3)!
            }
            if user!.roomResults?.q4 != nil{
                q4Sel.selectedSegmentIndex = Int(exactly: user!.roomResults!.q4)!
            }
            if user!.roomResults?.q5 != nil{
                q5Sel.selectedSegmentIndex = Int(exactly: user!.roomResults!.q5)!
            }
        }

    }
    
    @IBAction func q1Select(_ sender: UISegmentedControl) {
        user!.roomResults!.q1 = Int64(sender.selectedSegmentIndex)

    }
    @IBAction func q2Select(_ sender: UISegmentedControl) {
        user!.roomResults!.q2 = Int64(sender.selectedSegmentIndex)
    }
    @IBAction func q3Select(_ sender: UISegmentedControl) {
        user!.roomResults!.q3 = Int64(sender.selectedSegmentIndex)
    }
    @IBAction func q4Select(_ sender: UISegmentedControl) {
        user!.roomResults!.q4 = Int64(sender.selectedSegmentIndex)
    }
    @IBAction func q5Select(_ sender: UISegmentedControl) {
        user!.roomResults!.q5 = Int64(sender.selectedSegmentIndex)
    }

    @IBAction func submit(_ sender: Any) {
        dbHelp.updateData(user!)
    }



}
