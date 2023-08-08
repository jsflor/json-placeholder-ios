//
//  FeedList.swift
//  Json Placeholder
//
//  Created by Sebastian Flor on 08.08.23.
//

import SwiftUI

struct FeedList: View {
    var posts: [Post] = []
    var body: some View {
        List {
            ForEach(posts) {post in
                NavigationLink(destination: PostDetail(post: post), label: {
                    ListItem(content: post.title)
                })
            }
        }.scrollContentBackground(.hidden)
    }
}

struct FeedList_Previews: PreviewProvider {
    static var previews: some View {
        FeedList(posts: [
            Post(userId: 1, id: 1, title: "title", body: "body"),
            Post(userId: 1, id: 2, title: "title of second post", body: "body"),
            Post(userId: 1, id: 3, title: "title of third post", body: "body")
        ])
    }
}
