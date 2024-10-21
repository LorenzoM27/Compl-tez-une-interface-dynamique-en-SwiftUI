//
//  RestaurantInfosView.swift
//  TajMahal
//
//  Created by Lorenzo Menino on 16/10/2024.
//

import SwiftUI

struct RestaurantInfosView: View {
    
    var image: String
    var description: String
    var detail: String
    
    

    var body: some View {
        HStack(spacing: 14) {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 15, height: 15)
            
            Text(description)
            
            Spacer()
            
            Text(detail)
                
        }
        .font(.custom("Plus Jakarta Sans Regular", size: 14))
        .fontWeight(.medium)
        .foregroundStyle(Color.customColor1)
    }
}

#Preview {
    RestaurantInfosView(image: "schedules", description: "Mercredi", detail: "Détail")
}
