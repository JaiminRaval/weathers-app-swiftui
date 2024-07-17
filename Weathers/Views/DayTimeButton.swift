//
//  DayTimeButton.swift
//  Weathers
//
//  Created by Jaimin Raval on 16/07/24.
//

import SwiftUI

struct DayTimeButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
            Text(title)
                .font(.system(size: 20, weight: .bold))
                .frame(width: 280, height: 50)
                .background(backgroundColor)
                .foregroundStyle(textColor)
                .cornerRadius(12)
            }
}

#Preview {
    DayTimeButton(title: "Change Day Time", textColor: .white, backgroundColor: .blue)
}
