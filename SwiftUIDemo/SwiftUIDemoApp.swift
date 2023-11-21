//
//  SwiftUIDemoApp.swift
//  SwiftUIDemo
//
//  Created by Sourav Mishra on 20/11/23.
//

import SwiftUI

@main
struct SwiftUIDemoApp: App {
    @StateObject private var dataStore = YourDataStore()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(dataStore)
        }
    }
}

class YourDataStore: ObservableObject {
    @Published var isUserLoggedIn: Bool = false
    
    init() {
        loadData()
    }
    
    func saveData() {
        UserDefaults.standard.set(isUserLoggedIn, forKey: "isUserLoggedIn")
        UserDefaults.standard.synchronize()
    }
    
    func loadData() {
        isUserLoggedIn = UserDefaults.standard.bool(forKey: "isUserLoggedIn")
    }
}
