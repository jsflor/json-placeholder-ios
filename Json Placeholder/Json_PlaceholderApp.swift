//
//  Json_PlaceholderApp.swift
//  Json Placeholder
//
//  Created by Sebastian Flor on 04.08.23.
//

import SwiftUI

@main
struct Json_PlaceholderApp: App {
    var userController: UserController = UserController()
    var postController: PostController = PostController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(userController)
                .environmentObject(postController)
        }
    }
}
