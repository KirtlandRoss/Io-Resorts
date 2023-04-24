//
//  LoginView.swift
//  ResortFeedbackApp
//
//  Created by Kirtland Ross on 4/24/23.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var viewModel = ViewModel()
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \UserAuthData.token, ascending: true)],
        animation: .default)
    private var items: FetchedResults<UserAuthData>

    var body: some View {
        VStack {
            Image(systemName: "lock.shield")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.bottom, 30)
            TextField("Email", text: $viewModel.email)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            SecureField("Password", text: $viewModel.password)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            Button(action: {
                Task{
                    await viewModel.login()
                }
            }) {
                if !viewModel.loginProgress{
                    VStack{
                        Text("Login")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 220, height: 60)
                            .background(Color.blue)
                            .cornerRadius(15.0)
                        if viewModel.loginFailed{
                            Text("Login failed")
                                .foregroundColor(.red)
                        }
                    }
                }
                else{
                    ProgressView()
                        .disabled(true)
                }
            }
            if (viewModel.token != nil){
                Text("Token: " + (viewModel.token!))
            }
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
