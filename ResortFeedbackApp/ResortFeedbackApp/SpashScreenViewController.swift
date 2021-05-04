//
//  SpashScreenViewController.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 5/4/21.
//

import UIKit

class SpashScreenViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        _ = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(segue), userInfo: nil, repeats: false)

    }
    

    @objc func segue(){
        performSegue(withIdentifier: "splash", sender: self)
    }

}
