//
//  SurveyMenuViewController.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 4/27/21.
//

import UIKit

class SurveyMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func roomSurvey(_ sender: Any) {
        (self.navigationController as! NavigationViewController).chosenCategory = .room

        self.performSegue(withIdentifier: "ShowSurvey", sender: self)

    }
    @IBAction func foodSurvey(_ sender: Any) {
        (self.navigationController as! NavigationViewController).chosenCategory = .food
        self.performSegue(withIdentifier: "ShowSurvey", sender: self)
    }
    @IBAction func spaSurvey(_ sender: Any) {
        (self.navigationController as! NavigationViewController).chosenCategory = .spa
        self.performSegue(withIdentifier: "ShowSurvey", sender: self)
    }
    @IBAction func poolSurvey(_ sender: Any) {
        (self.navigationController as! NavigationViewController).chosenCategory = .pool
        self.performSegue(withIdentifier: "ShowSurvey", sender: self)
    }
    @IBAction func overallSurvey(_ sender: Any) {
        (self.navigationController as! NavigationViewController).chosenCategory = .overall
        self.performSegue(withIdentifier: "ShowSurvey", sender: self)
    }

    

}
