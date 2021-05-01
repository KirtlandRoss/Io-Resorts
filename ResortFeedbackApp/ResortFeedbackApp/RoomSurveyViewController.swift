//
//  RoomSurveyViewController.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 4/28/21.
//

import UIKit
import CoreData
import WCLShineButton
class RoomSurveyViewController: UIViewController {
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    @IBOutlet weak var question1: UILabel!
    @IBOutlet weak var question3: UILabel!
    @IBOutlet weak var question2: UILabel!
    @IBOutlet weak var question4: UILabel!
    @IBOutlet weak var question5: UILabel!



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
        updateScores()
        getQuestions()
        setupRating()



    }
    func setupRating(){
        var param1 = WCLShineParams()
        param1.bigShineColor = UIColor(rgb: (153,152,38))
        param1.smallShineColor = UIColor(rgb: (102,102,102))
        q5b3.params = param1
        q5b3.frame = .init(x: 100, y: 100, width: 60, height: 60)
        q5b3.fillColor = UIColor(rgb: (153,152,38))
        q5b3.color = UIColor(rgb: (170,170,170))

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







    @IBAction func submit(_ sender: Any) {
        user = (self.navigationController as! NavigationViewController).user!
        results?.completed = true
        user?.replaceResults(at: currentCategory!.rawValue, with: results!)
        
        try! context.save()
        //        dbHelp.updateData(user!)
    }

    func updateScores(){
        user = (self.navigationController as! NavigationViewController).user!

        results = (user?.results?.array as! [Results])[currentCategory!.rawValue]
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
                    print("uh oh")
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
                    print("uh oh")
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
                    print("uh oh")
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
                    print("uh oh")
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
                    print("uh oh")
                }
                
            }
//            if results?.q3 != nil{
//                q3Sel.selectedSegmentIndex = Int(exactly: results!.q3)!
//            }
//            if results?.q4 != nil{
//                q4Sel.selectedSegmentIndex = Int(exactly: results!.q4)!
//            }
//            if results?.q5 != nil{
//                q5Sel.selectedSegmentIndex = Int(exactly: results!.q5)!
//            }
        }
    }
    func getQuestions(){
       let category = (self.navigationController as! NavigationViewController).chosenCategory
        switch category {
        case .room:
            question1.text = "How clean was your room"
            question2.text = "How roomy was your room"
            question3.text = "How was the view?"
            question4.text = "How loud were your neighbors"
            question5.text = "Overall"
            self.title = "Room"
        case .food:
            question1.text = "How did the food taste"
            question2.text = "How did you feel about the cost"
            question3.text = "How was the food service?"
            question4.text = "How was the selection?"
            question5.text = "Overall"
            self.title = "Food"
        case .pool:
            question1.text = "How was the temperature"
            question2.text = "How was the cleanliness"
            question3.text = "How was the staff?"
            question4.text = "How was the location?"
            question5.text = "Overall"
            self.title = "Pool"
        case .spa:
            question1.text = "How was the wait?"
            question2.text = "How was the cleanliness?"
            question3.text = "How was the staff?"
            question4.text = "How was the price?"
            question5.text = "Overall"
            self.title = "Spa"
        case .overall:
            question1.text = "How was the check-in experience?"
            question2.text = "How was the location?"
            question3.text = "How was the staff?"
            question4.text = "How was the price?"
            question5.text = "How was the experience?"
            self.title = "Overall"
        default:
            ""
        }
    }

//MARK: Here there be dragons, this is to make the ratings work stars work graphically
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
