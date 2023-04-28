//
//  UIHelper.swift
//  GHFollowers
//
//  Created by Mohamed Atallah on 09/03/2023.
//

import UIKit


struct UIHelper {
    static func createThreeCoulmnFlowLayout(in view: UIView) -> UICollectionViewFlowLayout {
        let viewWidth: CGFloat = view.bounds.width
        let padding: CGFloat = 12
        let minimumItemSpacing: CGFloat = 10
        let availabeWidth = viewWidth - ((padding * 2) + (minimumItemSpacing * 2))
        let itemWidth = availabeWidth / 3
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40)
        
        return flowLayout
    }
}
