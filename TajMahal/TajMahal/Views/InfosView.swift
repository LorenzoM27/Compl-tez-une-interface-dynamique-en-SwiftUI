//
//  InfosView.swift
//  TajMahal
//
//  Created by Lorenzo Menino on 16/10/2024.
//

import SwiftUI

struct InfosView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Restaurant Indien")
                        .font(.subheadline)
                        .fontWeight(.light)
                        .foregroundStyle(Color.customColor1)
                    Text("Taj Mahal")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.customColor2)
                }
                Spacer()
                
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .colorMultiply(.gray)
                    .frame(width: 50, height: 50)
            }
        }
        .padding()
    }
}

#Preview {
    InfosView()
}
