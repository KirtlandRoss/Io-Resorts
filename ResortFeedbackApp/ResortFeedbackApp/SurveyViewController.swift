//
//  RoomSurveyViewController.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 4/28/21.
//

import UIKit
import CoreData
import WCLShineButton
class SurveyViewController: UIViewController {
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    @IBOutlet weak var question1: UILabel!
    @IBOutlet weak var question3: UILabel!
    @IBOutlet weak var question2: UILabel!
    @IBOutlet weak var question4: UILabel!
    @IBOutlet weak var question5: UILabel!

    @IBOutlet weak var backgroundImage: UIImageView!

    //MARK: Outlets for rating buttons
    @IBOutlet weak var q5b3: WCLShineButton!
    @IBOutlet weak var q5b1: WCLShineButton!
    @IBOutlet weak var q5b2: WCLShineButton!
    @IBOutlet weak var q5b4: WCLShineButton!
    @IBOutlet weak var q5b5: WCLShineButton!

    @IBOutlet weak var q4b1: WCLShineButton!
    @IBOutlet weak var q4b2: WCLShineButton!
    @IBOutlet weak var q4b3: WCLShineButton!
    @IBOutlet weak var q4b4: WCLShineButton!
    @IBOutlet weak var q4b5: WCLShineButton!

    @IBOutlet weak var q3b1: WCLShineButton!
    @IBOutlet weak var q3b2: WCLShineButton!
    @IBOutlet weak var q3b3: WCLShineButton!
    @IBOutlet weak var q3b4: WCLShineButton!
    @IBOutlet weak var q3b5: WCLShineButton!

    @IBOutlet weak var q2b1: WCLShineButton!
    @IBOutlet weak var q2b2: WCLShineButton!
    @IBOutlet weak var q2b3: WCLShineButton!
    @IBOutlet weak var q2b4: WCLShineButton!
    @IBOutlet weak var q2b5: WCLShineButton!

    @IBOutlet weak var q1b1: WCLShineButton!
    @IBOutlet weak var q1b2: WCLShineButton!
    @IBOutlet weak var q1b3: WCLShineButton!
    @IBOutlet weak var q1b4: WCLShineButton!
    @IBOutlet weak var q1b5: WCLShineButton!


    var user : User?
    let dbHelp = DBHelper()
    var results : Results?
    var currentCategory : Category?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.currentCategory = (self.navigationController as! NavigationViewController).chosenCategory!
        //set user pointer to navigationController's user pointee
        user = (self.navigationController as! NavigationViewController).user!
        setLabelImages()
        updateScores()
        updateContent()
        setButtonAppearnce(image: .star)
        setupRating()
    }

    @IBAction func submit(_ sender: Any) {

        results?.checkIfComplete()
        user?.replaceResults(at: Int(currentCategory!.rawValue), with: results!)
        try! context.save()
        print(self.results! as NSManagedObject)
        //checks if all surveys are complete. checkIfComplete also sets user.surveyComplete
        if !user!.surveyComplete && user!.checkIfComplete(){
            performSegue(withIdentifier: "SurveyComplete", sender: self)
        }
        else{
            let viewControllers: [UIViewController] = self.navigationController!.viewControllers as [UIViewController]
            self.navigationController!.popToViewController(viewControllers[viewControllers.count - 2], animated: true)
        }
    }

    func updateContent(){
        results?.questions?.setCategory(currentCategory!)
        results?.questions?.setContent()
        question1.text = results?.questions?.question1
        question2.text = results?.questions?.question2
        question3.text = results?.questions?.question3
        question4.text = results?.questions?.question4
        question5.text = results?.questions?.question5
        backgroundImage.image = UIImage(named: (results?.questions?.categoryString)!)
    }

    func setLabelImages(){
        question1.backgroundColor = UIColor(patternImage: UIImage(named: "button")!)
        question2.backgroundColor = UIColor(patternImage: UIImage(named: "button")!)
        question3.backgroundColor = UIColor(patternImage: UIImage(named: "button")!)
        question4.backgroundColor = UIColor(patternImage: UIImage(named: "button")!)
        question5.backgroundColor = UIColor(patternImage: UIImage(named: "button")!)
    }

    func setupRating(){
        q5b5.addTarget(self, action: #selector(q5b5Toggle), for: .valueChanged)
        q5b4.addTarget(self, action: #selector(q5b4Toggle), for: .valueChanged)
        q5b3.addTarget(self, action: #selector(q5b3Toggle), for: .valueChanged)
        q5b2.addTarget(self, action: #selector(q5b2Toggle), for: .valueChanged)
        q5b1.addTarget(self, action: #selector(q5b1Toggle), for: .valueChanged)

        q4b5.addTarget(self, action: #selector(q4b5Toggle), for: .valueChanged)
        q4b4.addTarget(self, action: #selector(q4b4Toggle), for: .valueChanged)
        q4b3.addTarget(self, action: #selector(q4b3Toggle), for: .valueChanged)
        q4b2.addTarget(self, action: #selector(q4b2Toggle), for: .valueChanged)
        q4b1.addTarget(self, action: #selector(q4b1Toggle), for: .valueChanged)

        q3b5.addTarget(self, action: #selector(q3b5Toggle), for: .valueChanged)
        q3b4.addTarget(self, action: #selector(q3b4Toggle), for: .valueChanged)
        q3b3.addTarget(self, action: #selector(q3b3Toggle), for: .valueChanged)
        q3b2.addTarget(self, action: #selector(q3b2Toggle), for: .valueChanged)
        q3b1.addTarget(self, action: #selector(q3b1Toggle), for: .valueChanged)

        q2b5.addTarget(self, action: #selector(q2b5Toggle), for: .valueChanged)
        q2b4.addTarget(self, action: #selector(q2b4Toggle), for: .valueChanged)
        q2b3.addTarget(self, action: #selector(q2b3Toggle), for: .valueChanged)
        q2b2.addTarget(self, action: #selector(q2b2Toggle), for: .valueChanged)
        q2b1.addTarget(self, action: #selector(q2b1Toggle), for: .valueChanged)


        q1b5.addTarget(self, action: #selector(q1b5Toggle), for: .valueChanged)
        q1b4.addTarget(self, action: #selector(q1b4Toggle), for: .valueChanged)
        q1b3.addTarget(self, action: #selector(q1b3Toggle), for: .valueChanged)
        q1b2.addTarget(self, action: #selector(q1b2Toggle), for: .valueChanged)
        q1b1.addTarget(self, action: #selector(q1b1Toggle), for: .valueChanged)


    }
    func setButtonAppearnce( image: WCLShineImage){

        //custom animation based on button rating
        var params1 = WCLShineParams()
        params1.shineCount = 0


        var params2 = WCLShineParams()
        params2.bigShineColor = UIColor(rgb: (255,245,71))
        params2.smallShineColor = UIColor(rgb: (255,255,255))
        params2.shineCount = 2

        var params3 = WCLShineParams()
        params3.bigShineColor = UIColor(rgb: (255,245,71))
        params3.smallShineColor = UIColor(rgb: (255,255,255))
        params3.shineCount = 5

        var params4 = WCLShineParams()
        params4.bigShineColor = UIColor(rgb: (255,245,71))
        params4.smallShineColor = UIColor(rgb: (255,255,255))
        params4.shineCount = 10

        var params5 = WCLShineParams()
        params5.smallShineColor = UIColor(rgb: (255,255,255))
        params5.shineCount = 20
        params5.enableFlashing = true
        params5.shineDistanceMultiple = 2
        params5.shineSize=10
        params5.animDuration = 1.5

        //sets appearnce parameters of buttons

        q5b5.params = params5
        q5b4.params = params4
        q5b3.params = params3
        q5b2.params = params2
        q5b1.params = params1

        q4b5.params = params5
        q4b4.params = params4
        q4b3.params = params3
        q4b2.params = params2
        q4b1.params = params1

        q3b5.params = params5
        q3b4.params = params4
        q3b3.params = params3
        q3b2.params = params2
        q3b1.params = params1

        q2b5.params = params5
        q2b4.params = params4
        q2b3.params = params3
        q2b2.params = params2
        q2b1.params = params1

        q1b5.params = params5
        q1b4.params = params4
        q1b3.params = params3
        q1b2.params = params2
        q1b1.params = params1

        //set button images
        q5b5.image = image;q5b4.image = image; q5b3.image = image; q5b2.image = image; q5b1.image = image
        q4b5.image = image; q4b4.image = image; q4b3.image = image; q4b2.image = image ; q4b1.image = image
        q3b5.image = image; q3b4.image = image; q3b3.image = image; q3b2.image = image; q3b1.image = image
        q2b5.image = image; q2b4.image = image; q2b3.image = image; q2b2.image = image; q2b1.image = image
        q1b5.image = image; q1b4.image = image; q1b3.image = image; q1b2.image = image; q1b1.image = image
    }

    func updateScores(){
        user = (self.navigationController as! NavigationViewController).user!
        results = (user?.results?.array as! [Results])[Int(currentCategory!.rawValue)]
        if user!.results == nil{
            user!.results? = [Results()]
        }
        else{
            if results?.q1 != nil{
                switch results!.q1{
                case 5:
                    q1b5Toggle()
                case 4:
                    q1b4Toggle()
                case 3:
                    q1b3Toggle()
                case 2:
                    q1b2Toggle()
                case 1:
                    q1b1Toggle()
                default:
                    print("")
                }
            }
            if results?.q2 != nil{
                switch results!.q2{
                case 5:
                    q2b5Toggle()
                case 4:
                    q2b4Toggle()
                case 3:
                    q2b3Toggle()
                case 2:
                    q2b2Toggle()
                case 1:
                    q2b1Toggle()
                default:
                    print("")
                }
            }
            if results?.q3 != nil{
                switch results!.q3{
                case 5:
                    q3b5Toggle()
                case 4:
                    q3b4Toggle()
                case 3:
                    q3b3Toggle()
                case 2:
                    q3b2Toggle()
                case 1:
                    q3b1Toggle()
                default:
                    print("")
                }
            }
            if results?.q4 != nil{
                switch results!.q4{
                case 5:
                    q4b5Toggle()
                case 4:
                    q4b4Toggle()
                case 3:
                    q4b3Toggle()
                case 2:
                    q4b2Toggle()
                case 1:
                    q4b1Toggle()
                default:
                    print("")
                }
                
            }
            if results?.q4 != nil{
                switch results!.q5{
                case 5:
                    q5b5Toggle()
                case 4:
                    q5b4Toggle()
                case 3:
                    q5b3Toggle()
                case 2:
                    q5b2Toggle()
                case 1:
                    q5b1Toggle()
                default:
                    print("")
                }

            }

        }
    }

    //MARK: These are the button handler functions

    //sets the rating and then runs the functions for selecting/deselecting the other buttons according to the rating
    @objc func q1b5Toggle(){
        results!.q1 = 5
        q1RatingSwitch()
    }
    @objc func q1b4Toggle(){
        results!.q1 = 4
        q1RatingSwitch()
    }
    @objc func q1b3Toggle(){
        results!.q1 = 3
        q1RatingSwitch()
    }
    @objc func q1b2Toggle(){
        results!.q1 = 2
        q1RatingSwitch()
    }
    @objc func q1b1Toggle(){
        results!.q1 = 1
        q1RatingSwitch()
    }
    //rating switch makes sure the other rating buttons are filled/unfilled based on the rating.
    func q1RatingSwitch(){
        q1b5.isSelected=false ;q1b4.isSelected=false; q1b3.isSelected=false ; q1b2.isSelected=false
        switch results!.q1{
        case 5:
            q1b5.isSelected = true
            fallthrough
        case 4:
            q1b4.isSelected = true
            fallthrough
        case 3:
            q1b3.isSelected = true
            fallthrough
        case 2:
            q1b2.isSelected = true
            fallthrough
        default:
            q1b1.isSelected = true
        }
    }
    @objc func q2b5Toggle(){
        results!.q2 = 5
        q2RatingSwitch()
    }
    @objc func q2b4Toggle(){
        results!.q2 = 4
        q2RatingSwitch()
    }
    @objc func q2b3Toggle(){
        results!.q2 = 3
        q2RatingSwitch()
    }
    @objc func q2b2Toggle(){
        results!.q2 = 2
        q2RatingSwitch()
    }
    @objc func q2b1Toggle(){
        results!.q2 = 1
        q2RatingSwitch()
    }
    func q2RatingSwitch(){
        q2b5.isSelected=false ;q2b4.isSelected=false; q2b3.isSelected=false ; q2b2.isSelected=false
        switch results!.q2{
        case 5:
            q2b5.isSelected = true
            fallthrough
        case 4:
            q2b4.isSelected = true
            fallthrough
        case 3:
            q2b3.isSelected = true
            fallthrough
        case 2:
            q2b2.isSelected = true
            fallthrough
        default:
            q2b1.isSelected = true
        }
    }
    @objc func q3b5Toggle(){
        results!.q3 = 5
        q3RatingSwitch()
    }
    @objc func q3b4Toggle(){
        results!.q3 = 4
        q3RatingSwitch()
    }
    @objc func q3b3Toggle(){
        results!.q3 = 3
        q3RatingSwitch()
    }
    @objc func q3b2Toggle(){
        results!.q3 = 2
        q3RatingSwitch()
    }
    @objc func q3b1Toggle(){
        results!.q3 = 1
        q3RatingSwitch()
    }
    func q3RatingSwitch(){
        q3b5.isSelected=false ;q3b4.isSelected=false; q3b3.isSelected=false ; q3b2.isSelected=false
        switch results!.q3{
        case 5:
            q3b5.isSelected = true
            fallthrough
        case 4:
            q3b4.isSelected = true
            fallthrough
        case 3:
            q3b3.isSelected = true
            fallthrough
        case 2:
            q3b2.isSelected = true
            fallthrough
        default:
            q3b1.isSelected = true
        }
    }
    @objc func q4b5Toggle(){
        results!.q4 = 5
        q4RatingSwitch()
    }
    @objc func q4b4Toggle(){
        results!.q4 = 4
        q4RatingSwitch()
    }
    @objc func q4b3Toggle(){
        results!.q4 = 3
        q4RatingSwitch()
    }
    @objc func q4b2Toggle(){
        results!.q4 = 2
        q4RatingSwitch()
    }
    @objc func q4b1Toggle(){
        results!.q4 = 1
        q4RatingSwitch()
    }
    func q4RatingSwitch(){
        q4b5.isSelected=false ;q4b4.isSelected=false; q4b3.isSelected=false ; q4b2.isSelected=false
        switch results!.q4{
        case 5:
            q4b5.isSelected = true
            fallthrough
        case 4:
            q4b4.isSelected = true
            fallthrough
        case 3:
            q4b3.isSelected = true
            fallthrough
        case 2:
            q4b2.isSelected = true
            fallthrough
        default:
            q4b1.isSelected = true
        }
    }

    @objc func q5b5Toggle(){
        results!.q5 = 5
        q5RatingSwitch()
    }
    @objc func q5b4Toggle(){
        results!.q5 = 4
        q5RatingSwitch()
    }
    @objc func q5b3Toggle(){
        results!.q5 = 3
        q5RatingSwitch()
    }
    @objc func q5b2Toggle(){
        results!.q5 = 2
        q5RatingSwitch()
    }
    @objc func q5b1Toggle(){
        results!.q5 = 1
        q5RatingSwitch()
    }
    func q5RatingSwitch(){
        q5b5.isSelected=false ;q5b4.isSelected=false; q5b3.isSelected=false ; q5b2.isSelected=false
        switch results!.q5{
        case 5:
            q5b5.isSelected = true
            fallthrough
        case 4:
            q5b4.isSelected = true
            fallthrough
        case 3:
            q5b3.isSelected = true
            fallthrough
        case 2:
            q5b2.isSelected = true
            fallthrough
        default:
            q5b1.isSelected = true
        }

    }
}
