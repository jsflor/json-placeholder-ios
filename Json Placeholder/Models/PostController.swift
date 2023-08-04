//
//  PostController.swift
//  Json Placeholder
//
//  Created by Sebastian Flor on 04.08.23.
//

import Foundation
import Alamofire

class PostController: ObservableObject {
    @Published var posts: [Post] = []
    
    init() {
        getData()
    }
    
    func getData() {
        AF.request("https://jsonplaceholder.typicode.com/posts").responseDecodable(of: [Post].self) {res in
            if let value = res.value {
                self.posts = value
            }
        }
    }
}
