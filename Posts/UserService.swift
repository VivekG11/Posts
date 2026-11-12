//
//  UserService.swift
//  Posts
//
//  Created by Vivek Guntuku on 11/11/26.
//

import Foundation

struct User : Codable {
    let id : Int
    let name : String
    let email : String
    
}

enum NetworkError : Error {
    case invalidUrl
    case invalidResponse
}


class UserService{
    let url = "https://jsonplaceholder.typicode.com/users"
    func fetchUser() async throws -> [User]{
        
        guard let url = URL(string: url) else {
            throw NetworkError.invalidUrl
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
            throw NetworkError.invalidResponse
        }
        
        return try JSONDecoder().decode([User].self, from: data)
        
    }
    
}
