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
            FeedList(posts: postController.posts)
        }.navigationTitle("Feed")
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed().environmentObject(PostController())
    }
}
