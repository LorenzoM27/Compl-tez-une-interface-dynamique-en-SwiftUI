//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            Image("TajMahal")
            Spacer()
            InfosView()
                .padding(.top)
            NavigationLink {
                MenuView()
            } label : {
                Text("Accéder au menu")
                    .font(.custom("Plus Jakarta Sans Bold", size: 16))
                    .foregroundStyle(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 50)
//                    .padding(.horizontal, 100)
//                    .frame(height: 50)
                    .background(Color.customRed)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .padding(.top)
        }
    }
}

#Preview {
    WelcomeView()
}
