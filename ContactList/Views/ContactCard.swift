//
//  ContactCard.swift
//  ContactList
//
//  Created by Uyen Nguyen Minh Duy on 21/07/2022.
//

import SwiftUI
import CoreLocation

struct ContactCard: View {
    
    var contact: Contact
    
    var body: some View {
        ZStack {
            ColorConstants.rmitBlue
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack {
                    MapView(coordinate: contact.locationCoordinate)
                        .edgesIgnoringSafeArea(.top)
                        .frame(height: 250)
                    CircleImage(image: contact.image)
                        .offset(y: 100)
                        .padding(.bottom, 100)
                    Text(contact.name)
                        .font(.system(size: 40))
                        .bold()
                        .foregroundColor(.white)
                    Image("rmit-logo-white").resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 65)
                        .padding(.bottom, 5)
                    
                    InfoView(text: contact.email, imageName: "envelope.fill")
                    InfoView(text: contact.phone, imageName: "phone.fill")
                }
            }
        }
        .navigationTitle(contact.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContactCard_Previews: PreviewProvider {
    static var previews: some View {
        ContactCard(contact: contacts[0])
    }
}
