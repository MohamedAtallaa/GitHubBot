//
//  PersistenceManager.swift
//  GHFollowers
//
//  Created by Mohamed Atallah on 12/03/2023.
//

import Foundation


enum PersistenceActionType {
    case add, remove
}


enum PersistenceManager {
    static private let defaults = UserDefaults.standard
    
    enum Keys {
        static let favorites = "favorites"
    }
    
    
    static func updataWith(favorite: Follower, actionType: PersistenceActionType, completed: @escaping (GFError?) -> Void) {
        retrieveFavorites { result in
            switch result {
            case .success(let followers):
                var retrievedFollowers = followers
                switch actionType {
                case .add:
                    guard !retrievedFollowers.contains(favorite) else {
                        completed(.alreadyInFavorites)
                        return
                    }
                    retrievedFollowers.append(favorite)
                case .remove:
                    retrievedFollowers.removeAll { $0.login == favorite.login }
                }
                
                completed(save(favorites: retrievedFollowers))
                
            case .failure(let error):
                completed(error)
            }
        }
    }
    
    
    static func retrieveFavorites(completed: @escaping (Result<[Follower], GFError>) -> Void) {
        guard let favoritesData = defaults.object(forKey: Keys.favorites) as? Data else {
            completed(.success([]))
            return
        }
        
        do {
            let decoder = JSONDecoder()
            let favorites = try decoder.decode([Follower].self, from: favoritesData)
            completed(.success(favorites))
        } catch {
            completed(.failure(.unableToFavorite))
        }
    }
    
    
    static func save(favorites: [Follower]) -> GFError? {
        do {
            let encoder = JSONEncoder()
            let encodedFavorites = try encoder.encode(favorites)
            defaults.set(encodedFavorites, forKey: Keys.favorites)
            return nil
        } catch {
            return .unableToFavorite
        }
    }
}
