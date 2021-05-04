//
//  WelcomeViewController.swift
//  ResortFeedbackProject
//
//  Created by Kirtland Ross on 4/23/21.
//

import UIKit

class WelcomeViewController: UIViewController {
    let dbhelp = DBHelper()
    var user : User?

    @IBOutlet weak var backgoundY: NSLayoutConstraint!
    @IBOutlet weak var nameX: NSLayoutConstraint!
    @IBOutlet weak var welcomeY: NSLayoutConstraint!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var survey: UIButton!



    override func viewDidLoad() {
        super.viewDidLoad()
        user = (self.navigationController as! NavigationViewController).user
        nameLabel.text = user?.name

        //make sure before going any further that the user has completed or not completed the survey
        user?.checkIfComplete()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
            welcomeY.constant -= view.bounds.height
            nameX.constant -= view.bounds.width

        if user!.surveyComplete{
            survey.setTitle("Update Survey", for: .normal)
        }
        else{
            survey.setTitle("Complete Survey", for: .normal)
        }
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

        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
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
    @IBAction func coupons(_ sender: Any) {
        self.user = (self.navigationController as! NavigationViewController).user
        if self.user!.surveyComplete{
            self.performSegue(withIdentifier: "CouponSegue", sender: self)
        }
        else{

            nameLabel.text = "You have no coupons"
        }
    }


}
