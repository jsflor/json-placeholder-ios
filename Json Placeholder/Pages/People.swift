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
            PeopleList(people: userController.people)
        }.navigationTitle("People")
    }
}

struct People_Previews: PreviewProvider {
    static var previews: some View {
        People().environmentObject(UserController())
    }
}
