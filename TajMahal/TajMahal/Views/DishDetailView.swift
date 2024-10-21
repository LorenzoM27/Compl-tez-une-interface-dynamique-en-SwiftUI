//
//  DishDetailView.swift
//  TajMahal
//
//  Created by Lorenzo Menino on 17/10/2024.
//

import SwiftUI

struct DishDetailView: View {
    
    @Environment(\.presentationMode) var presentationMode
    let dish: Dish
    
    var body: some View {
        VStack {
            ZStack(alignment: .topTrailing) {
                Image(dish.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 370, height: 470)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .clipped()
                
                SpiceIndicatorView(dish: dish)
                    .frame(width: 80, height: 25)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding()
                
            }
            .padding(.bottom, 30)
            
            ScrollView {
                VStack(alignment: .leading) {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Allergènes :")
                            .font(.custom("Plus Jakarta Sans Regular", size: 14))
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.customColor1)
                        
                        Text(dish.allergens)
                            .font(.custom("Plus Jakarta Sans Regular", size: 14))
                            .foregroundStyle(Color.customColor1)
                    }
                    
                    Divider()
                        .padding(.vertical, 10)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Ingrédients :")
                            .font(.custom("Plus Jakarta Sans Regular", size: 14))
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.customColor1)
                        
                        Text(dish.ingredients)
                            .font(.custom("Plus Jakarta Sans Regular", size: 14))
                            .foregroundStyle(Color.customColor1)
                        //.lineLimit(nil)
                    }
                }
            }
            .scrollIndicators(.hidden)
            //.padding(.horizontal)
            
        }
        .padding()
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                HStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        HStack {
                            Image(systemName: "chevron.left")
                                .foregroundStyle(Color.customColor2)
                        }
                    }
                    Text(dish.name)
                        .font(.custom("Plus Jakarta Sans Regular", size: 16))
                        .fontWeight(.semibold)
                }
                
            }
        }
    }
}

#Preview {
    DishDetailView(dish: Dish(name: "Pakoras", description: "Beignets de légumes enrobés de pâte épicée et frits", allergens: "Sans allergènes majeurs", ingredients: "Huile, beurre clarifié (ghee), oignon, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, crème fraîche, crème de coco, sel, coriandre fraîche", spiceLevel: .medium, imageName: "Pakoras", price: "5,50"))
}
