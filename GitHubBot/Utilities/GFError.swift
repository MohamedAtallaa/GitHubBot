//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by Mohamed Atallah on 06/03/2023.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request, please check your internet connection."
    case invalidResponse = "Invaild response from the server. Please try again."
    case invalidData = "The data recived from the server is Invalid. Please try again."
    case unableToFavorite = "There was an error favoriting this user. Please try again"
    case alreadyInFavorites = "You've already favorited this user. You must REALLY like them!"
}
