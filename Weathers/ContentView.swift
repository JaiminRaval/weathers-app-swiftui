//
//  ContentView.swift
//  Weathers
//
//  Created by Jaimin Raval on 16/07/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight: Bool = false
    
    var body: some View {
        ZStack{
            BackgroundView(isNight: $isNight)
            
            VStack{
                CityNameView(cityName: K.CityName)
                
                CurrentWeatherView(imageName: isNight ? "moon.stars.fill" : K.cloudIcon)
                
                HStack(spacing:20){
                    DayWeatherView(currDay: "Tue",
                                   weatherImage: K.cloudIcon,
                                   dayTemperature: 72)
                    DayWeatherView(currDay: "Wed", 
                                   weatherImage: K.sunIcon,
                                   dayTemperature: 70)
                    DayWeatherView(currDay: "Thu", 
                                   weatherImage: K.cloudIcon,
                                   dayTemperature: 74)
                    DayWeatherView(currDay: "Fri", 
                                   weatherImage: K.windIcon,
                                   dayTemperature: 68)
                    DayWeatherView(currDay: "Sat", 
                                   weatherImage: K.cloudIcon,
                                   dayTemperature: 76)
                }
                
                Spacer()
                Button {
                    isNight.toggle()
                }label: {
                    DayTimeButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)

                }
                
                Spacer()

            }
            
        }.onAppear{
            let btn = DayTimeButton(
                title: "Change Day Time",
                textColor: .blue,
                backgroundColor: .white)
            print(type(of: btn.body))
        }
    }
}

#Preview {
    ContentView()
}

struct DayWeatherView: View {
    
    var currDay: String
    var weatherImage: String
    var dayTemperature: Int
    
    var body: some View {
        VStack{
            Text(currDay)
                .font(.system(size: 20, weight: .semibold))
                .foregroundStyle(.white)
            
            Image(systemName: weatherImage)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            
            Text("\(dayTemperature)°")
                .font(.system(size: 30, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

struct BackgroundView: View {
    
    @Binding var isNight: Bool

    var body: some View {
        LinearGradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("Lightblue")],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}

struct CityNameView: View {
    
    var cityName: String

    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium))
            .foregroundStyle(.white)
            .padding()
    }
}

struct CurrentWeatherView: View {
    
    var imageName: String
    
    var body: some View {
        VStack(spacing: 8){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("76°")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(.white)
        }
        .padding(.bottom, 40)
    }
}


