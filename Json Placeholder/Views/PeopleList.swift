//
//  PeopleList.swift
//  Json Placeholder
//
//  Created by Sebastian Flor on 08.08.23.
//

import SwiftUI

struct PeopleList: View {
    var people: [User] = []
    var body: some View {
        List {
            ForEach(people) {person in
                NavigationLink(destination: {
                    PeopleDetail(person: person)
                }, label: {
                    ListItem(content: person.username)
                })
            }
        }.scrollContentBackground(.hidden)
    }
}


struct PeopleList_Previews: PreviewProvider {
    static var previews: some View {
        PeopleList(people: [
            User(id: 1, name: "Jose", username: "joselu", email: "jose@mail.com", phone: "654635321", website: "google.com"),
            User(id: 2, name: "Sebas", username: "sebassi", email: "sebas@mail.com", phone: "654635321", website: "google.com")
        ])
    }
}
