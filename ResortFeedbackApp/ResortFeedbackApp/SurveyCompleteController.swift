//
//  SurveyCompleteController.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 5/3/21.
//

import UIKit

class SurveyCompleteController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func returnToMain(_ sender: Any) {


            let viewControllers: [UIViewController] = self.navigationController!.viewControllers as [UIViewController]
            var i = 0
        //search through ViewController stack and then return to main menu
            for controller in viewControllers{
                if controller.title == "MainMenu"{
                    self.navigationController!.popToViewController(viewControllers[i], animated: true)
                }
                i += 1
            }



    }

}
