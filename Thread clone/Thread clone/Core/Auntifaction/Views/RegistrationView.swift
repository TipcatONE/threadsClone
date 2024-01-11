//
//  RegistrationView.swift
//  Thread clone
//
//  Created by Никита Иголкин on 11.01.2024.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullName = ""
    @State private var userName = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            Spacer()
            Image("threads")
                .resizable()
                .scaledToFit()
                .frame(width: 120,height: 120)
                .padding()
            VStack{
                TextField("Enter your email",text: $email)
                    .modifier(ThreadsTextFieldModifire())
                SecureField("Enter your password", text: $password)
                    .modifier(ThreadsTextFieldModifire())
                TextField("Enter your full-name",text: $fullName)
                    .modifier(ThreadsTextFieldModifire())
                TextField("Enter your username",text: $userName)
                    .modifier(ThreadsTextFieldModifire())
                
            }
            Button(action: {}, label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(width: 352,height: 44)
                    .background(.black)
                    .cornerRadius(8)
            })
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button{
                dismiss()
            } label:{
                HStack(spacing:3){
                    Text("Already have an account?")
                    Text("Sign in")
                        .fontWeight(.semibold)
                }
                .font(.subheadline)
                .foregroundColor(.black)
                .padding(.vertical,16)
            }
        }
    }
}

#Preview {
    RegistrationView()
}
