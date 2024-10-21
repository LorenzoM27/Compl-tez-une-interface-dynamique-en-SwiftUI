//
//  RowDishView.swift
//  TajMahal
//
//  Created by Lorenzo Menino on 16/10/2024.
//

import SwiftUI

struct RowDishView: View {
    
    let dish : Dish
    
    var body: some View {
        HStack(spacing: 20) {
            Image(dish.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 130, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .clipped()
            
            VStack(alignment: .leading, spacing: 10) {
                Text(dish.name)
                    .font(.custom("Plus Jakarta Sans Regular", size: 14))
                    .fontWeight(.medium)
                    .foregroundStyle(Color.customColor1)
                
                Text(dish.description)
                    .font(.custom("Plus Jakarta Sans Regular", size: 12))
                    .foregroundStyle(Color.customColor1)
                
                HStack {
                    Text("\(dish.price) €")
                        .font(.custom("Plus Jakarta Sans Regular", size: 12))
                        .foregroundStyle(Color.customColor1)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    SpiceIndicatorView(dish: dish)
                }
                .font(.system(size: 12))
            }
        }
    }
}

#Preview {
    RowDishView(dish: Dish(name: "Pakoras", description: "Beignets de légumes enrobés de pâte épicée et frits", allergens: "Sans allergènes majeurs", ingredients: "Légumes assortis (aubergines, oignons, épinards), farine de pois chiches, épices, huile", spiceLevel: .medium, imageName: "Pakoras", price: "5,50"))
}
