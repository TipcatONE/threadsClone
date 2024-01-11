//
//  LoginView.swift
//  Thread clone
//
//  Created by Никита Иголкин on 11.01.2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                Image("threads")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120,height: 120)
                    .padding()
                VStack{
                    TextField("Enter your email",text: $email)
                        .textInputAutocapitalization(.none)
                        .modifier(ThreadsTextFieldModifire())
                    SecureField("Enter your password", text: $password)
                        .modifier(ThreadsTextFieldModifire())
                }
                NavigationLink{
                    Text("Forgot password")
                }label:{
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .padding(.trailing,28)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity,alignment: .trailing)
                    
                }
                Button(action: {}, label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .frame(width: 352,height: 44)
                        .background(.black)
                        .cornerRadius(8)
                })
                Spacer()
                
                Divider()
                
                NavigationLink{
                    
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                }label: {
                    HStack(spacing:3){
                        Text("Don't have an account?")
                        Text("Sign up")
                            .fontWeight(.semibold)
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .padding(.vertical,16)
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
