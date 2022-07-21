//
//  Contact.swift
//  ContactList
//
//  Created by Uyen Nguyen Minh Duy on 21/07/2022.
//


import Foundation
import SwiftUI
import CoreLocation

struct Contact: Identifiable{
    var id = UUID()
    var name: String
    var email: String
    var phone: String

    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var locationCoordinate: CLLocationCoordinate2D
}
