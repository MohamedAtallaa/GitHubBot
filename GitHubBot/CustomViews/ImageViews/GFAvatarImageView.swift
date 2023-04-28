//
//  GFAvatarImageView.swift
//  GHFollowers
//
//  Created by Mohamed Atallah on 07/03/2023.
//

import UIKit

class GFAvatarImageView: UIImageView {
    
    let placeHolder = UIImage(resource: .avatar)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeHolder
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}


