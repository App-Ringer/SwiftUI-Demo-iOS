//
//  ChartView.swift
//  SwiftUIDemo
//
//  Created by Sourav Mishra on 20/11/23.
//

import Foundation
import SwiftUI

struct ChartView: View {
    @EnvironmentObject private var dataStore: YourDataStore
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                VStack {
                    AgeView().padding()
                        .background(UIColor(named: "#18283E")?.toSUIColor)
                        .cornerRadius(10)
                    TopLocation().padding()
                        .background(UIColor(named: "#18283E")?.toSUIColor)
                        .cornerRadius(10)
                    Spacer()
                }.padding()
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            VStack {
                                Text("Home")
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    .navigationBarTitleDisplayMode(.inline)
                    .background(UIColor(named: "#1B2131")?.toSUIColor.ignoresSafeArea())
                    .navigationBarItems(
                        trailing: Button(action: {
                            dataStore.isUserLoggedIn = false
                            dataStore.saveData()
                        }) {
                            Text("Log Out")
                        }
                    )
                GeometryReader { reader in
                    UIColor(named: "#1B2131")?.toSUIColor
                        .frame(height: reader.safeAreaInsets.top, alignment: .top)
                        .ignoresSafeArea()
                }
            }
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}

extension UIColor {
    var toSUIColor: Color {
        Color(self)
    }
}
