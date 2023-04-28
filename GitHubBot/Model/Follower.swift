//
//  Follower.swift
//  GHFollowers
//
//  Created by Mohamed Atallah on 06/03/2023.
//

import Foundation

struct Follower: Codable, Hashable {
    let login: String
    let avatarUrl: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(login)
    }
}
