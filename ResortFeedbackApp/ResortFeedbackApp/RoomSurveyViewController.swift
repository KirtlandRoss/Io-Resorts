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
    var results : Results?
    override func viewDidLoad() {
        super.viewDidLoad()

        user = (self.navigationController as! NavigationViewController).user!
        results = (user?.results?.allObjects as! [Results])[0]
        if user!.results == nil{
            user!.results? = [Results()]
        }
        else{
            if results?.q1 != nil{
                q1Sel.selectedSegmentIndex = Int(exactly: results!.q1)!
            }
            if results?.q2 != nil{
                q2Sel.selectedSegmentIndex = Int(exactly: results!.q2)!
            }
            if results?.q3 != nil{
                q3Sel.selectedSegmentIndex = Int(exactly: results!.q3)!
            }
            if results?.q4 != nil{
                q4Sel.selectedSegmentIndex = Int(exactly: results!.q4)!
            }
            if results?.q5 != nil{
                q5Sel.selectedSegmentIndex = Int(exactly: results!.q5)!
            }
        }

    }
    
    @IBAction func q1Select(_ sender: UISegmentedControl) {
        results!.q1 = Int64(sender.selectedSegmentIndex)

    }
    @IBAction func q2Select(_ sender: UISegmentedControl) {
        results!.q2 = Int64(sender.selectedSegmentIndex)
    }
    @IBAction func q3Select(_ sender: UISegmentedControl) {
        results!.q3 = Int64(sender.selectedSegmentIndex)
    }
    @IBAction func q4Select(_ sender: UISegmentedControl) {
        results!.q4 = Int64(sender.selectedSegmentIndex)
    }
    @IBAction func q5Select(_ sender: UISegmentedControl) {
        results!.q5 = Int64(sender.selectedSegmentIndex)
    }

    @IBAction func submit(_ sender: Any) {
        var arr = (user?.results?.allObjects as! [Results])
        arr[0] = results!

        dbHelp.updateResultsData(results: arr, user: user!)
//        dbHelp.updateData(user!)
    }



}
