//
//  File.swift
//  swiftUI
//
//  Created by Никита Иголкин on 12.11.2023.
//

import Foundation
import SwiftUI


struct UIFILE:View {
    var body: some View{
        Image("Image")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
    }
    
}

#Preview {
    UIFILE()
}
