//
//  SpiceIndicatorView.swift
//  TajMahal
//
//  Created by Lorenzo Menino on 17/10/2024.
//

import SwiftUI

struct SpiceIndicatorView: View {
    
    let dish : Dish
    
    var body: some View {
        HStack(spacing: 10) {
            Image("spiceActive")
                .resizable()
                .scaledToFit()
                .frame(width: 12, height: 12)

            Image(dish.spiceLevel != .light ? "spiceActive" : "spice")
                .resizable()
                .scaledToFit()
                .frame(width: 12, height: 12)
               
            Image(dish.spiceLevel == .hot ? "spiceActive" : "spice")
                .resizable()
                .scaledToFit()
                .frame(width: 12, height: 12)
               
        }
//        .frame(width: 80, height: 25)
//        .background(.white)
//        .clipShape(RoundedRectangle(cornerRadius: 15))
        
        
    }
}

#Preview {
    SpiceIndicatorView(dish: Dish(name: "", description: "", allergens: "", ingredients: "", spiceLevel: .medium, imageName: "", price: ""))
}
