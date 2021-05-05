//
//  SpashScreenViewController.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 5/4/21.
//

import UIKit

class SpashScreenViewController: UIViewController {




    @IBOutlet weak var circleY: NSLayoutConstraint!


    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .dark 
        _ = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(segue), userInfo: nil, repeats: false)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.5, delay: 1, options: UIView.AnimationOptions.curveEaseOut, animations: {
              self.circleY.constant -= 200
              self.view.layoutIfNeeded()
          }, completion: nil)
    }

    @objc func segue(){
        performSegue(withIdentifier: "splash", sender: self)
    }


}
