//
//  BarView.swift
//  SwiftUIDemo
//
//  Created by Sourav Mishra on 21/11/23.
//

import Foundation
import SwiftUI

struct BarView: View {
    let value: CGFloat
    let color: Color
    
    var body: some View {
        HStack(alignment: .lastTextBaseline, spacing: 8) {
            ProgressView("", value: value, total: 1.0).accentColor(color)
            Text("26,383").foregroundColor(.gray).fontWeight(.medium).font(.system(size: 15))
        }
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView(value: 0.2, color: .red)
    }
}
