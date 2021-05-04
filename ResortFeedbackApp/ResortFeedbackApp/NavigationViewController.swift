//
//  NavigationViewController.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 4/28/21.
//

import UIKit
import WCLShineButton
class NavigationViewController: UINavigationController {
    var user : User?
    var chosenCategory : Category?
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .dark 
        // Do any additional setup after loading the view.
    }
}

enum Category : Int64{
    case room = 0
    case food = 1
    case pool = 2
    case spa = 3
    case overall = 4
    case unknown = 5
}

