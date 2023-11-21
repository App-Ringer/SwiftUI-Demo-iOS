//
//  DonutChart.swift
//  SwiftUIDemo
//
//  Created by Sourav Mishra on 21/11/23.
//

import Foundation
import SwiftUI

struct DonutChart: View {
    var body: some View {
        HStack(spacing:10) {
            ZStack {
                Circle().trim(from: 0.6, to: 1)
                    .stroke(UIColor(named: "red")!.toSUIColor, lineWidth: 20)
                
                Circle().trim(from: 0.4, to: 0.6)
                    .stroke(UIColor(named: "pink")!.toSUIColor, lineWidth: 20)
                
                Circle()
                    .trim(from: 0.0, to: 0.65) // Adjust this value to change the percentage of the donut filled
                    .stroke(UIColor(named: "yellow")!.toSUIColor, lineWidth: 20)
                    .rotationEffect(Angle(degrees: -90))
                //                    .animation(.easeInOut)
            }
            .frame(width: 130, height: 130).padding()
            Spacer()
            VStack(alignment: .leading,spacing:10) {
                HStack() {
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(UIColor(named: "red")!.toSUIColor)
                    Text("USA").foregroundColor(.gray).fontWeight(.medium).font(.system(size: 15))
                }
                HStack {
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(UIColor(named: "pink")!.toSUIColor)
                    Text("UK").foregroundColor(.gray).fontWeight(.medium).font(.system(size: 15))
                }
                HStack {
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(UIColor(named: "yellow")!.toSUIColor)
                    Text("Canada").foregroundColor(.gray).fontWeight(.medium).font(.system(size: 15))
                }
            }
            Spacer()
            VStack(alignment: .leading,spacing:10) {
                Text("24%").foregroundColor(.gray).fontWeight(.medium).font(.system(size: 15))
                Text("24%").foregroundColor(.gray).fontWeight(.medium).font(.system(size: 15))
                Text("24%").foregroundColor(.gray).fontWeight(.medium).font(.system(size: 15))
            }
        }
    }
}

struct TopLocation: View {
    var body: some View {
        VStack {
            HStack {
                Text("Top Location").foregroundColor(.gray).fontWeight(.bold).font(.system(size: 20))
                Spacer()
                Image("star")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
            }
            DonutChart()
            
        }
    }
}
