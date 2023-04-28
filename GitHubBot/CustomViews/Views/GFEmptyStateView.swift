//
//  File.swift
//  GHFollowers
//
//  Created by Mohamed Atallah on 10/03/2023.
//

import UIKit


class GFEmptyStateView: UIView {
    
    let messageLabel = GFTitleLabel(textAlignment: .center, fontSize: 28)
    let emptyStateImageView = UIImageView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    convenience init(message: String) {
        self.init(frame: .zero)
        messageLabel.text = message
    }
    
    private func configure() {
        addSubview(messageLabel)
        addSubview(emptyStateImageView)
        
        messageLabel.numberOfLines = 3
        messageLabel.textColor = .secondaryLabel
        
        emptyStateImageView.image = UIImage(resource: .emptyState)
        emptyStateImageView.translatesAutoresizingMaskIntoConstraints = false
                
        NSLayoutConstraint.activate([
            messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -150),
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            messageLabel.heightAnchor.constraint(equalToConstant: 200),
            
            emptyStateImageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            emptyStateImageView.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            emptyStateImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 170),
            emptyStateImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 40)
        ])
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
