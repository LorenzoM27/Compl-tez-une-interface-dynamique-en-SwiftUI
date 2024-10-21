//
//  InfosView.swift
//  TajMahal
//
//  Created by Lorenzo Menino on 16/10/2024.
//

import SwiftUI

struct InfosView: View {
    var body: some View {
        VStack(spacing: 16) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Restaurant Indien")
                        .font(.custom("Plus Jakarta Sans Regular", size: 16))
                        .font(.subheadline)
                        //.fontWeight(.light)
                        .foregroundStyle(Color.customColor1)
                    Text("Taj Mahal")
                        .font(.custom("Plus Jakarta Sans Regular", size: 24))
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
            .padding(.bottom, 25)
            
            ForEach(Infos.allCases) { info in
                RestaurantInfosView(image: info.image, description: info.description, detail: info.detail)
            }
        }
        .padding()
    }
}

#Preview {
    InfosView()
}
