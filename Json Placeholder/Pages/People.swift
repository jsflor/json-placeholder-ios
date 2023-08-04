//
//  Followers.swift
//  Json Placeholder
//
//  Created by Sebastian Flor on 04.08.23.
//

import SwiftUI

struct People: View {
    @EnvironmentObject var userController: UserController

    var body: some View {
        NavigationView {
            List {
                ForEach(userController.people) {person in
                    ListItem(title: person.username, description: "email: \(person.email), phone: \(person.phone), website: \(person.website)")
                }
            }
        }.navigationTitle("People")
    }
}

struct People_Previews: PreviewProvider {
    static var previews: some View {
        People()
    }
}
