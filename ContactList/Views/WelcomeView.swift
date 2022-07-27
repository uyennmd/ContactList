//
//  WelcomeView.swift
//  ContactList
//
//  Created by Uyen Nguyen Minh Duy on 27/07/2022.
//

import Foundation
import SwiftUI

struct WelcomeView: View {
    @State var isWelcomeActive: Bool = true
    var body: some View {
        ZStack {
            if isWelcomeActive {
                //Display Welcome Screen
                Button (action: {
                    isWelcomeActive = false
                }, label: {
                    Text("Get started!")
                })
            } else {
                ContactList()
            }
        }
    }
}
