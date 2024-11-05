//
//  DishSectionModifier.swift
//  TajMahal
//
//  Created by Lorenzo Menino on 17/10/2024.
//

import SwiftUI

//struct DishSectionModifier: ViewModifier {
//   // let title: String
//    let dishes: Dish
//
//    /// Define the appearance of the modified view
//    func body(content: Content) -> some View {
//        ZStack {
//            NavigationLink{
//                DishDetailView(dish: dishes)
//            }
//            label: {
//                EmptyView()
//            }
//            .opacity(0)
//            
//            content
//        }
//        .listRowSeparator(.hidden)
//    }
//}
///// Adding method available in all SwiftUI View
//extension View {
//    /// Return a view applying a modifictor on the view on she's called
////    func dishSection(dishes: Dish) -> some View {
////        self.modifier(DishSectionModifier(dishes: dishes))
////    }
//    func dishSection(dishes: Dish) -> some View {
//            self.modifier(DishSectionModifier(dishes: dishes))
//        }
//}



struct DishSectionModifier<Destination: View>: ViewModifier {
    
    let destination: () -> Destination

    /// Define the appearance of the modified view
    func body(content: Content) -> some View {
        ZStack {
            NavigationLink(destination: destination()) {
                EmptyView()
            }
            .opacity(0)
            
            content
        }
        .listRowSeparator(.hidden)
    }
}
/// Adding method available in all SwiftUI View
extension View {
    /// Return a view applying a modifictor on the view on she's called
    func dishSection<Destination: View>( destination: @escaping () -> Destination) -> some View {
            self.modifier(DishSectionModifier(destination: destination))
        }
}
