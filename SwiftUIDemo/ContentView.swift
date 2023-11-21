//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Sourav Mishra on 20/11/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var appState: YourDataStore

    var body: some View {
        Group {
            if appState.isUserLoggedIn {
                ChartView()
            } else {
                LoginView()
            }
        }
        .onAppear {
            // Check the user's login status or perform other startup tasks
            // and update the appState.isLoggedIn accordingly
        }
    }
}


