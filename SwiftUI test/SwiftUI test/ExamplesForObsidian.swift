//
//  ExamplesForObsidian.swift
//  SwiftUI test
//
//  Created by Никита Иголкин on 23.11.2023.
//

import SwiftUI

struct ExamplesForObsidian: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue,Color("Color")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack{
                Text("Kostanay")
                    .font(.title)
                    .bold()
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.white)
                    .padding()
                VStack(spacing:1){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180,height: 180)
                    Text("34°")
                        .font(.system(size: 50,weight: .medium,design: .default))
                        .foregroundStyle(.white)
                }
                .padding(.bottom,70)
                HStack(spacing:20){
                            WeatherView(DayOfWeek: "Tue", imageView: "cloud.sun.fill", temperature: 32)
                            WeatherView(DayOfWeek: "Wed", imageView: "wind", temperature: 76)
                            WeatherView(DayOfWeek: "Thu", imageView: "wind.snow", temperature: 45)
                            WeatherView(DayOfWeek: "Friday", imageView: "sun.max.fill", temperature: 26)
                            WeatherView(DayOfWeek: "Sat", imageView: "sunset.fill", temperature: 15)
                            
                    }
                    Spacer()
            }
        }
            
    }
}

#Preview {
    ExamplesForObsidian()
}

struct WeatherView: View {
    var DayOfWeek: String
    var imageView:String
    var temperature:Int
    
    var body: some View {
        VStack{
            Text(DayOfWeek)
                .foregroundStyle(.white)
                .bold()
            Image(systemName: imageView)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50,height: 50)
            Text("\(temperature)°")
                .foregroundStyle(.white)
                .bold()
        }
    }
}
