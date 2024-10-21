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
            // À completer
//            Section("Entrées") {
//                ForEach(viewModel.apetizerArray, id: \.self) { apetize in
//                    ZStack {
//                        NavigationLink {
//                            DishDetailView(dish: apetize)
//                        } label: {
//                            EmptyView()
//                        }
//                        .opacity(0)
//                        
//                        RowDishView(dish: apetize)
//                    }
//                    .listRowSeparator(.hidden)
//                }
//            }
            self.dishSection(title: "Entrées", dishes: viewModel.apetizerArray)
            
            self.dishSection(title: "Plats principaux", dishes: viewModel.mainCourseArray)
//            Section("Plats principaux") {
//                ForEach(viewModel.mainCourseArray, id: \.self) { course in
//                    ZStack {
//                        NavigationLink {
//                            DishDetailView(dish: course)
//                        } label: {
//                            EmptyView()
//                        }
//                        .opacity(0)
//                        
//                        RowDishView(dish: course)
//                    }
//                    .listRowSeparator(.hidden)
//                   
//
//                }
//            }
    
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
