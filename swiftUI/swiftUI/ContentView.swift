//
//  ContentView.swift
//  swiftUI
//
//  Created by Никита Иголкин on 12.11.2023.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            
            UIFILE()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()
            
            
            Spacer()
        }
    }
}


#Preview {
    ContentView()
}
