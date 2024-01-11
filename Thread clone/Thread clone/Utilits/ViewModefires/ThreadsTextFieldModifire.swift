//
//  ThreadsTextFieldModifire.swift
//  Thread clone
//
//  Created by Никита Иголкин on 11.01.2024.
//

import SwiftUI

struct ThreadsTextFieldModifire:ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal,24)
    }
}
