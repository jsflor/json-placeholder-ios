//
//  ListItem.swift
//  Json Placeholder
//
//  Created by Sebastian Flor on 04.08.23.
//

import SwiftUI

struct ListItem: View {
    var title: String = ""
    var description: String = ""
    var body: some View {
        VStack {
            Text(title).bold()
            Text(description)
        }
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem(title: "Title", description: "description")
    }
}
