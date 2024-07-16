//
//  ContentView.swift
//  Weathers
//
//  Created by Jaimin Raval on 16/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue, .white], 
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack{
                Text(K.CityName)
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}
