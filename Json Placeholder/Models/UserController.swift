//
//  UserController.swift
//  Json Placeholder
//
//  Created by Sebastian Flor on 04.08.23.
//

import Foundation
import Alamofire

class UserController: ObservableObject {
    @Published var people: [User] = []
    
    init() {
        getData()
    }
    
    func getData() {
        AF.request("https://jsonplaceholder.typicode.com/users").responseDecodable(of: [User].self) {res in
            if let value = res.value {
                self.people = value
            }
        }
    }
}
