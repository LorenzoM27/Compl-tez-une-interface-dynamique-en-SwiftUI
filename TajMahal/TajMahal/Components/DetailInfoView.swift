//
//  DetailInfoView.swift
//  TajMahal
//
//  Created by Lorenzo Menino on 21/10/2024.
//

import SwiftUI

struct DetailInfoView: View {
    
    let description: String
    let title: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.custom("Plus Jakarta Sans Regular", size: 14))
                .fontWeight(.semibold)
                .foregroundStyle(Color.customColor1)
            
            Text(description)
                .font(.custom("Plus Jakarta Sans Regular", size: 14))
                .foregroundStyle(Color.customColor1)
        }    }
}

#Preview {
    DetailInfoView(description: "Sans allergènes majeurs", title: "Allergènes :")
}
