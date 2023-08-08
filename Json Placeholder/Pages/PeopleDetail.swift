//
//  PeopleDetail.swift
//  Json Placeholder
//
//  Created by Sebastian Flor on 08.08.23.
//

import SwiftUI

struct PeopleDetail: View {
    var person: User
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text(person.name)
                Text(person.email)
                Text(person.phone)
            }
        }.navigationTitle(person.username)
    }
}

struct PeopleDetail_Previews: PreviewProvider {
    static var previews: some View {
        PeopleDetail(person: User(id: 1, name: "Sebas", username: "sebiss", email: "sebas@mail.com", phone: "654635321", website: "google.es"))
    }
}
