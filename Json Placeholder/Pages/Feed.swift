//
//  Feed.swift
//  Json Placeholder
//
//  Created by Sebastian Flor on 04.08.23.
//

import SwiftUI

struct Feed: View {
    @EnvironmentObject var postController: PostController
    
    var body: some View {
        NavigationView {
            List {
                ForEach(postController.posts) {post in
                    ListItem(title: post.title, description: post.body)
                }
            }
        }.navigationTitle("Feed")
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}
