//
//  SurveyMenuViewController.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 4/27/21.
//

import UIKit

class SurveyMenuViewController: UIViewController {
    var navController : NavigationViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
        navController = (self.navigationController! as! NavigationViewController)

        // Do any additional setup after loading the view.
    }

    @IBAction func roomSurvey(_ sender: Any) {
        navController!.chosenCategory = .room
        self.performSegue(withIdentifier: "ShowSurvey", sender: self)
    }
    @IBAction func foodSurvey(_ sender: Any) {
        navController!.chosenCategory = .food
        self.performSegue(withIdentifier: "ShowSurvey", sender: self)
    }
    @IBAction func spaSurvey(_ sender: Any) {
        navController!.chosenCategory = .spa
        self.performSegue(withIdentifier: "ShowSurvey", sender: self)
    }
    @IBAction func poolSurvey(_ sender: Any) {
        navController!.chosenCategory = .pool
        self.performSegue(withIdentifier: "ShowSurvey", sender: self)
    }
    @IBAction func overallSurvey(_ sender: Any) {
        navController!.chosenCategory = .overall
        self.performSegue(withIdentifier: "ShowSurvey", sender: self)
    }
}
