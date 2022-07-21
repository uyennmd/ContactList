//
//  ContactRow.swift
//  ContactList
//
//  Created by Uyen Nguyen Minh Duy on 21/07/2022.
//

import SwiftUI

struct ContactRow: View {
    var contact: Contact
    
    var body: some View {
        HStack {
            contact.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(contact.name)
        }
    }
}


struct ContactRow_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            ContactRow(contact: contacts[0])
                .previewLayout(.fixed(width: 300, height: 70))
            ContactRow(contact: contacts[1])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
