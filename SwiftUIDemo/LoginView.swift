//
//  LoginView.swift
//  SwiftUIDemo
//
//  Created by Sourav Mishra on 21/11/23.
//

import Foundation
import SwiftUI
import LoginUiSpm

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isPasswordVisible: Bool = false
    @State private var isLoginSuccessful: Bool = false
    @EnvironmentObject private var dataStore: YourDataStore
    
    var body: some View {
        VStack {
            NavigationLink("", destination: ChartView().navigationBarBackButtonHidden(true), isActive: $isLoginSuccessful).hidden()
            LoginUiSpm.LoginView(isLoginSuccessful: $isLoginSuccessful)
        } .onChange(of: isLoginSuccessful) { newValue in
            dataStore.isUserLoggedIn = newValue
            dataStore.saveData()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
