//
//  Contact.swift
//  ContactList
//
//  Created by Uyen Nguyen Minh Duy on 21/07/2022.
//


import Foundation
import SwiftUI
import CoreLocation

var jsonFile = "contacts.json"

struct Contact: Identifiable, Codable {
    var id: Int
    var name: String
    var email: String
    var phone: String

    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}

struct Coordinates: Codable {
    var latitude: Double
    var longitude: Double
}
