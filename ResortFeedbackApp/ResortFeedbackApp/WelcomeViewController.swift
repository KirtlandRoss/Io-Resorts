//
//  WelcomeViewController.swift
//  ResortFeedbackProject
//
//  Created by Kirtland Ross on 4/23/21.
//

import UIKit

class WelcomeViewController: UIViewController {


    @IBOutlet weak var backgoundY: NSLayoutConstraint!
    @IBOutlet weak var nameX: NSLayoutConstraint!
    @IBOutlet weak var welcomeY: NSLayoutConstraint!
    @IBOutlet weak var backgroundImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
            welcomeY.constant -= view.bounds.height
            nameX.constant -= view.bounds.width
//            loginButton.alpha = 0.0
    }

    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.5, delay: 0.0, options: UIView.AnimationOptions.curveEaseOut, animations: {
              self.welcomeY.constant += self.view.bounds.height
              self.view.layoutIfNeeded()
          }, completion: nil)

        UIView.animate(withDuration: 0.5, delay: 0.3, options: .curveEaseOut, animations: {
              self.nameX.constant += self.view.bounds.width
              self.view.layoutIfNeeded()
          }, completion: nil)

//        UIView.animate(withDuration: 0.5, delay: 0.4, options: .curveEaseOut, animations: {
//              self.nameLabel.alpha = 1
//          }, completion: nil)
    }


    override func didRotate(from fromInterfaceOrientation: UIInterfaceOrientation) {
        switch UIDevice.current.orientation{

        case .landscapeLeft:
            self.backgroundImage.image = UIImage(named: "logo")
            self.backgoundY.constant += 50
        case .landscapeRight:
            self.backgroundImage.image = UIImage(named: "logo")
            self.backgoundY.constant += 50
        default:
            self.backgroundImage.image = UIImage(named: "logoVertical")

        }

    }

}
