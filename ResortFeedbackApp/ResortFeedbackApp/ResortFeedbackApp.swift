//
//  ResortFeedbackAppApp.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 4/24/23.
//

import SwiftUI

@main
struct ResortFeedbackAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            if AppState.shared.token == nil{
                LoginView()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
            }
            else{
                DashboardView()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
            }
        }
    }
}
