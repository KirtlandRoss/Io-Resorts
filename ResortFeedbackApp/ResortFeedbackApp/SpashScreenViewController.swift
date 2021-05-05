//
//  SpashScreenViewController.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 5/4/21.
//

import UIKit

class SpashScreenViewController: UIViewController {



    @IBOutlet weak var logoX: NSLayoutConstraint!
    

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
        UIView.animate(withDuration: 0.2, delay: 1.5, options: UIView.AnimationOptions.curveLinear, animations: {
              self.logoX.constant += self.view.bounds.width
              self.view.layoutIfNeeded()
          }, completion: nil)
    }

    @objc func segue(){
        performSegue(withIdentifier: "splash", sender: self)
    }


}
