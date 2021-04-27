//
//  SurveyQuestionsView.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 4/27/21.
//
import Foundation
import SwiftUI
import WCLShineButton

struct SurveyQuestionsView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }

}

struct SurveyQuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        SurveyQuestionsView()
    }
}

struct QuestionCell: Codable, Hashable{
    var question: String?

    init(){
        var param1 = WCLShineParams()
        param1.bigShineColor = UIColor(rgb: (153,152,38))
        param1.smallShineColor = UIColor(rgb: (102,102,102))
        let bt1 = WCLShineButton(frame: .init(x: 100, y: 100, width: 60, height: 60), params: param1)

    }
}
