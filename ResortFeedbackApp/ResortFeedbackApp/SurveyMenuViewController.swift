//
//  SurveyMenuViewController.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 4/27/21.
//

import UIKit

class SurveyMenuViewController: UIViewController {
    @IBOutlet weak var roomButton: UIButton!
    @IBOutlet weak var foodButton: UIButton!
    @IBOutlet weak var spaButton: UIButton!
    @IBOutlet weak var poolButton: UIButton!
    @IBOutlet weak var overallButton: UIButton!

    var user : User?

    var navController : NavigationViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
        navController = (self.navigationController! as! NavigationViewController)
        user = navController?.user
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        //checks if user has completed survey, if not then disable the button to the survey(s) that are complete
        if !(user!.surveyComplete){
            disableCompletedSurveys()
        }
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
    func disableCompletedSurveys(){
        for result in navController!.user?.results?.array as! [Results]{
            if  result.completed {
                switch Category(rawValue: (result.catagory)) ?? .unknown {
                case .room:
                    roomButton.alpha = 0.5
                    roomButton.isEnabled = false
                case .food:
                    foodButton.alpha = 0.5
                    foodButton.isEnabled = false
                case .spa  :
                    spaButton.alpha = 0.5
                    spaButton.isEnabled = false
                case .pool  :
                    poolButton.alpha = 0.5
                    poolButton.isEnabled = false
                case .overall  :
                    overallButton.alpha = 0.5
                    overallButton.isEnabled = false
                default:
                    print("")
                }
            }
        }
    }
}
