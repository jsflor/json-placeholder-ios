//
//  User.swift
//  Json Placeholder
//
//  Created by Sebastian Flor on 04.08.23.
//

import Foundation

struct User: Decodable, Identifiable {
    var id: Int
    var name: String
    var username: String
    var email: String
    var phone: String
    var website: String
}
