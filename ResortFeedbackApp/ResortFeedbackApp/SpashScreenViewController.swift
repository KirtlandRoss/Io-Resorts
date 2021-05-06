//
//  SpashScreenViewController.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 5/4/21.
//

import UIKit

class SpashScreenViewController: UIViewController {




    @IBOutlet weak var circleY: NSLayoutConstraint!
    @IBOutlet weak var fullLogo: UIImageView!
    @IBOutlet weak var name: UIImageView!


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

        //raise circle
        UIView.animate(withDuration: 0.7, delay: 0.5, options: UIView.AnimationOptions.curveEaseOut, animations: {
            self.circleY.constant -= 200

            self.view.layoutIfNeeded()
        }, completion: nil)

        //fade in logo
        UIView.animate(withDuration: 0.5, delay: 1.5, options: UIView.AnimationOptions.curveEaseOut, animations: {
            self.fullLogo.alpha = 1
            self.name.alpha = 0
            self.view.layoutIfNeeded()
        }, completion: nil)
    }

    @objc func segue(){
        performSegue(withIdentifier: "splash", sender: self)
    }


}
