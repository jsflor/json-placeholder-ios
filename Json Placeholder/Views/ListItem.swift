//
//  ListItem.swift
//  Json Placeholder
//
//  Created by Sebastian Flor on 04.08.23.
//

import SwiftUI

struct ListItem: View {
    var content: String = ""
    var body: some View {
        Text(content)
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem(content: "Title")
    }
}
