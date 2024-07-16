//
//  DayTimeButton.swift
//  Weathers
//
//  Created by Jaimin Raval on 16/07/24.
//

import SwiftUI

struct DayTimeButton: View {
    var body: some View {
        Button{
            debugPrint("change button tapped")
            
        }label: {
            Text("Change Day Time")
                .font(.system(size: 20, weight: .bold))
                .frame(width: 280, height: 50)
                .background(.white)
                .cornerRadius(12)
        }    }
}

#Preview {
    DayTimeButton()
}
