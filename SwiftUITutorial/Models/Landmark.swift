//
//  Landmark.swift
//  SwiftUITutorial
//
//  Created by Jay on 2023/03/24.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Codable, Hashable, Identifiable{
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
//    let category : String
//    let city: String
//    let isReatured: Bool
//    let isFavorite: Bool
    private let imageName: String
    var image: Image{
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    struct Coordinates: Codable, Hashable {
        let longitude: Double
        let latitude: Double
    }
    
}


