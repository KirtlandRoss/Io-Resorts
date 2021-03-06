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
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var survey: UIButton!
    @IBOutlet weak var couponButton: UIButton!



    override func viewDidLoad() {
        super.viewDidLoad()
        user = (self.navigationController as! NavigationViewController).user
        nameLabel.text = user?.name

        //make sure before going any further that the user has completed or not completed the survey
        _ = user?.checkIfComplete()

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if user!.surveyComplete{
            survey.setTitle("Update Survey", for: .normal)
            couponButton.isEnabled = true
            couponButton.alpha = 1
        }
        else{
            survey.setTitle("Complete Survey", for: .normal)
            couponButton.isEnabled = false
            couponButton.alpha = 0.95
        }
    }

    override func viewDidAppear(_ animated: Bool) {
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
