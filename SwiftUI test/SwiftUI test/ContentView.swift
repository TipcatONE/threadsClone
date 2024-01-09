//
//  ContentView.swift
//  SwiftUI test
//
//  Created by Никита Иголкин on 13.11.2023.
//

import SwiftUI



struct ContentView: View {
    @State var name = ""
    var body: some View {
        ZStack{
            Color(.green)
                .ignoresSafeArea()
            VStack{
                TextField("Write your name",text: $name)
                    .padding(.trailing)
                    .frame(width: 300,height: 30)
                    .background(.gray)
                
                Text("Your name is \(name)")
                    .font(.title)
                    .bold()
                    .foregroundStyle(Color(.red))
                
            }
        }
    }
}
    
#Preview {
    ContentView()
}

