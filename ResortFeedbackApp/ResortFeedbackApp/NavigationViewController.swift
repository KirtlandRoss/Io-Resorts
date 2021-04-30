//
//  NavigationViewController.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 4/28/21.
//

import UIKit

class NavigationViewController: UINavigationController {
    var user : User?
    var chosenCategory : Category?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}

//gives strings more array type behavior
extension StringProtocol {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}


enum Category : Int{
    case room = 0
    case food = 1
    case pool = 2
    case spa = 3
    case overall = 4
}
