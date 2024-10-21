//
//  Model.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import Foundation

// Cette enumération répertorie 3 niveaux de piment
enum SpiceLevel {
    case light
    case medium
    case hot
}

// Représente l'objet "plat", qui figure sur la carte du menu
struct Dish: Hashable {
    var name: String
    var description: String
    var allergens: String
    var ingredients: String
    var spiceLevel: SpiceLevel
    var imageName: String
    var price: String
}


enum Infos : CaseIterable, Identifiable {
    case schedules, service, address, website, phone
    
    var id: Self { self }
    
    var image: String {
        switch self {
        case .schedules: return "schedules"
        case .service : return "service"
        case .address : return "localisation"
        case .website: return "site"
        case .phone: return "phone"
        }
    }
    
    var description: String {
        switch self {
        case .schedules: return getCurrentDay()
        case .service : return "Type de service"
        case .address : return "12 Avenue de la Brique - 75010 Paris"
        case .website: return "www.tajmahal.fr"
        case .phone: return "06 12 34 56 78"
        }
    }
    
    var detail: String {
        switch self {
        case .schedules: return getSchedule(for: getCurrentDay())
        case .service : return "À emporter"
        case .address : return ""
        case .website: return ""
        case .phone: return ""
        }
    }
    
    
    func getCurrentDay() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "fr_FR")
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: Date()).capitalized
    }
    
    func getSchedule(for day: String) -> String {
            switch day {
            case "Lundi":
                return "11h30 - 14h30 ⸱ 18h30 - 22h00"
            case "Mardi":
                return "11h30 - 14h30 ⸱ 18h30 - 22h00"
            case "Mercredi":
                return "11h30 - 14h30 ⸱ 18h30 - 22h00"
            case "Jeudi":
                return "11h30 - 14h30 ⸱ 18h30 - 22h00"
            case "Vendredi":
                return "11h30 - 14h30 ⸱ 18h30 - 22h00"
            case "Samedi":
                return "11h30 - 14h30 ⸱ 18h30 - 22h00"
            case "Dimanche":
                return "Fermé"
            default:
                return "Horaires inconnus"
            }
        }
}

