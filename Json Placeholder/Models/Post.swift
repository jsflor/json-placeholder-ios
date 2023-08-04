//
//  Post.swift
//  Json Placeholder
//
//  Created by Sebastian Flor on 04.08.23.
//

import Foundation

struct Post: Decodable, Identifiable {
    var userId: Int
    var id: Int
    var title: String
    var body: String
}
