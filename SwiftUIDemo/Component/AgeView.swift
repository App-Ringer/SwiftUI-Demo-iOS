//
//  AgeView.swift
//  SwiftUIDemo
//
//  Created by Sourav Mishra on 21/11/23.
//

import Foundation
import SwiftUI

struct AgeView: View {
    let data: [CGFloat] = [0.2, 0.5, 0.8]
    let barColor: [Color] = [UIColor(named: "red")!.toSUIColor, UIColor(named: "pink")!.toSUIColor,UIColor(named: "yellow")!.toSUIColor]
    var body: some View {
        VStack {
            HStack {
                Text("Age").foregroundColor(.gray).fontWeight(.bold).font(.system(size: 20))
                Spacer()
                Image("star")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
            }
            VStack(alignment: .center, spacing: 8) {
                ForEach(0..<data.count, id: \.self) { index in
                    BarView(value: data[index], color: barColor[index])
                }
            }
            HStack(spacing:10) {
                HStack {
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
                Spacer()
            }.padding()
        }
    }
}
