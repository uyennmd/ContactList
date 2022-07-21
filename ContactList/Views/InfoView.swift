//
//  InfoView.swift
//  ContactList
//
//  Created by Uyen Nguyen Minh Duy on 21/07/2022.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50.0)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(ColorConstants.rmitRed)
                Text(text)
                    .foregroundColor(.black)
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "123456789", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
        InfoView(text: "email@gmail.com", imageName: "envelope.fill")
            .previewLayout(.sizeThatFits)
    }
}
