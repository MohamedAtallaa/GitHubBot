//
//  UIViewController+.swift
//  GHFollowers
//
//  Created by Mohamed Atallah on 04/03/2023.
//

import UIKit
import SafariServices


extension UIViewController {
    
    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let gfAlertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            gfAlertVC.modalPresentationStyle = .overFullScreen
            gfAlertVC.modalTransitionStyle = .crossDissolve
            self.present(gfAlertVC, animated: true)
        }
    }
    
    
    func presentSafariVC(with url: URL) {
        let safariVC = SFSafariViewController(url: url)
        safariVC.preferredControlTintColor = .systemGreen
        present(safariVC, animated: true)
    }
    
}
