//
//  LoginView.swift
//  SwiftUIDemo
//
//  Created by Sourav Mishra on 21/11/23.
//

import Foundation
import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isPasswordVisible: Bool = false
    @State private var isLoginSuccessful: Bool = false
    @EnvironmentObject private var dataStore: YourDataStore
    
    var body: some View {
        NavigationView {
            VStack {
                CustomTextField(imageName: "person", placeholder: "Email", text: $email)
                CustomPasswordTextField(imageName: "lock", placeholder: "Password", isPasswordVisible: $isPasswordVisible, text: $password)
                
                HStack {
                    Spacer()
                    Button(action: {
                        // Add your "Forgot Password" logic here
                        print("Forgot Password tapped")
                    }) {
                        Text("Forgot Password?")
                            .foregroundColor(.blue).fontWeight(.bold).font(.system(size: 15))
                    }
                }
                .padding(.top, 10)
                
                HStack {
                    Text("Don't have an account?")
                        .foregroundColor(.gray).fontWeight(.bold).font(.system(size: 15))
                    Text("Sign Up")
                        .foregroundColor(.blue).fontWeight(.bold).font(.system(size: 15))
                }
                .padding(.top, 10)
                
                
                NavigationLink(destination: ChartView(), isActive: $isLoginSuccessful) {
                    EmptyView()
                }
                .hidden()
                
                Button(action: {
                    print("Email: \(email)")
                    print("Password: \(password)")
                    isLoginSuccessful = true
                    dataStore.isUserLoggedIn = true
                    dataStore.saveData()
                }) {
                    HStack {
                        Spacer()
                        Text("Sign In")
                            .padding(10)
                            .foregroundColor(.white).font(.system(size: 20, weight: .bold))
                        Spacer()
                    }.background(Color.black).cornerRadius(10)
                }.padding(.top, 10)
                
                HStack {
                    Text("Login with Google, Facebook or Apple")
                        .foregroundColor(.gray).fontWeight(.bold).font(.system(size: 15))
                }
                .padding(.top, 10)
                
                SocialLoginView()
                Spacer()
            }
            .padding()
            .navigationTitle("Sign In")
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
