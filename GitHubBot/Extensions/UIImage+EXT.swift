//
//  UIImage+EXT.swift
//  GHFollowers
//
//  Created by Mohamed Atallah on 06/03/2023.
//

import UIKit

enum ImageResource: String {
    case avatar = "avatar-placeholder"
    case emptyState = "empty-state-logo"
    case logo = "gh-logo"
}


extension UIImage {
    convenience init(resource: ImageResource) {
        self.init(named: resource.rawValue)!
    }
}
