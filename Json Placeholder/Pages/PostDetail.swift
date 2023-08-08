//
//  PostDetail.swift
//  Json Placeholder
//
//  Created by Sebastian Flor on 08.08.23.
//

import SwiftUI

struct PostDetail: View {
    var post: Post
    var body: some View {
        NavigationView {
            VStack {
                Text(post.title).bold()
                Text(post.body)
            }
        }.navigationTitle(post.title)
    }
}

struct PostDetail_Previews: PreviewProvider {
    static var previews: some View {
        PostDetail(post: Post(userId: 1, id: 1, title: "title", body: "body"))
    }
}
