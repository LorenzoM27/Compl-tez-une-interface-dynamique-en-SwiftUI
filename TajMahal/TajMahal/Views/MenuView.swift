//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Menu sous forme de liste
struct MenuView: View {
    // Référence vers le view model qui permet d'accéder aux tableaux d'entrées et de plats du menu
    let viewModel: ViewModel = ViewModel()
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        List {
            
            Section("Entrée") {
                ForEach(viewModel.apetizerArray, id: \.self) { dish in
                    RowDishView(dish: dish)
                        .dishSection {
                            DishDetailView(dish: dish)
                        }
                }
            }
            
            Section("Plats principaux") {
                ForEach(viewModel.mainCourseArray, id: \.self) { dish in
                    RowDishView(dish: dish)
                        .dishSection {
                            DishDetailView(dish: dish)
                        }

                }
            }
        }
        .listRowSpacing(12)
        //.listStyle(.insetGrouped)
        .navigationBarTitle("Menu", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    HStack {
                        Image(systemName: "chevron.left")
                            .foregroundStyle(Color.customColor2)
                    }
                }
            }
        }
    }
}

#Preview {
    MenuView()
}
