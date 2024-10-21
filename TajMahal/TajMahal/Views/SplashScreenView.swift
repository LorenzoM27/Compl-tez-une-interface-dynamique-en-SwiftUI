//
//  SplashScreenView.swift
//  TajMahal
//
//  Created by Lorenzo Menino on 16/10/2024.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var isActive = false
    
    var body: some View {
        if isActive {
            WelcomeView()
        } else {
            ZStack {
                Color.customRed
                Image("Logo")
            }
            .ignoresSafeArea()
            .onAppear {
                /// Within 2 sec, show welcome view
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        isActive.toggle()
                    }
                }
            }
        }
    }
}

#Preview {
    SplashScreenView()
}
