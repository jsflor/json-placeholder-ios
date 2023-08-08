//
//  ContentView.swift
//  Json Placeholder
//
//  Created by Sebastian Flor on 04.08.23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var postController: PostController
    @EnvironmentObject var userController: UserController

    var body: some View {
        TabView {
            Feed().tabItem {
                Label("Feed", systemImage: "tray.and.arrow.down.fill")
            }.badge(postController.posts.count)
            People().tabItem {
                Label("People", systemImage: "tray.and.arrow.down.fill")
            }.badge(userController.people.count)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(PostController()).environmentObject(UserController())
    }
}
